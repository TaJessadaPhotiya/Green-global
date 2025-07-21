console.log("use lazyImage.js")


        function logElementEvent(eventName, element) {
          console.log(Date.now(), eventName, element.getAttribute("data-src"));
        }

        let callback_enter = function (element) {
          logElementEvent("🔑 ENTERED", element);
        };
        let callback_exit = function (element) {
          logElementEvent("🚪 EXITED", element);
        };
        let callback_loading = function (element) {
          logElementEvent("⌚ LOADING", element);
        };
        let callback_loaded = function (element) {
          logElementEvent("👍 LOADED", element);
        };
        let callback_error = function (element) {
          logElementEvent("💀 ERROR", element);
          element.src = "./images/440x560-Error.webp";
        };
        let callback_finish = function () {
          logElementEvent("✔️ FINISHED", document.documentElement);
        };
        let callback_cancel = function (element) {
          logElementEvent("🔥 CANCEL", element);
        };

        let ll = new LazyLoad({
          class_applied: "lz-applied",
          class_loading: "lz-loading",
          class_loaded: "lz-loaded",
          class_error: "lz-error",
          class_entered: "lz-entered",
          class_exited: "lz-exited",
          // Assign the callbacks defined above
        //   callback_enter: callback_enter,
        //   callback_exit: callback_exit,
        //   callback_cancel: callback_cancel,
        //   callback_loading: callback_loading,
        //   callback_loaded: callback_loaded,
        //   callback_error: callback_error,
        //   callback_finish: callback_finish
        });


