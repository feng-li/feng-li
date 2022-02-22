all: join sync

join:
	pdftk cv/Feng.Li-CV.pdf  cv/Feng.Li-CV-CN.pdf output cv/Feng.Li-CV-EN_CN.pdf

sync:
	rsync -av --delete-excluded --prune-empty-dirs --include '*/' --include '*.pdf' --exclude '*' cv/  ${HOME}/nextcloud/feng.li/cv/
