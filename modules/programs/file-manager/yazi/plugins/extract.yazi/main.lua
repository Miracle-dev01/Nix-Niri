return {
    entry = function()
        local file = cx.active.current.hovered

        if not file then
            ya.notify({
                title = "Extract",
                content = "No file selected",
                level = "warn",
            })
            return
        end

        local path = tostring(file.url)

        local child, err = Command("ex")
            :arg(path)
            :spawn()

        if not child then
            ya.notify({
                title = "Extract failed",
                content = tostring(err),
                level = "error",
            })
            return
        end

        local status, wait_err = child:wait()

        if not status or not status.success then
            ya.notify({
                title = "Extract failed",
                content = tostring(wait_err or "Extraction returned an error"),
                level = "error",
            })
            return
        end

        ya.emit("refresh", {})

        ya.notify({
            title = "Extraction complete",
            content = path,
            level = "info",
        })
    end,
}
