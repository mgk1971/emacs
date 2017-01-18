;; In SAP intranet we need a proxy for reaching the package servers
(use-package url
  :config
  (setq url-proxy-services
	(quote
	 (("http" . "proxy.wdf.sap.corp:8080")
	  ("https" . "proxy.wdf.sap.corp:8080"))
	 )
	)
  )
