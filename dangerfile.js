import {message, danger} from "danger"
import spellcheck from 'danger-plugin-spellcheck'

spellcheck()

const modifiedMD = danger.git.modified_files.join("- ")
message("Changed Files in this PR: \n - " + modifiedMD)