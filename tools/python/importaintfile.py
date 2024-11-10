#!/bin/python
import os
import sys
import time
import datetime
import nuke


__author__ = "HTMLDigger"
__version__ = "1.01.8"


# Set $PATH bash file
# export HTMLDigger=$HOME/HTMLDigger/
# export PATH=$PATH:$HTMLDigger
# kdialog - -title "Long process complite" - -passivepopup "This is popup will disapire in 5sec" 5&

class JobTools:
    def __init__(self, show_name, shot_name):
        self.showname = show_name
        self.shotname = shot_name

    def showName(self):
        return self.showname

    def shotName(self):
        return self.shotname

class mpc:
    def __init__(self):
        self.showName = 'raw'
        self.shotName = 'raw_0010'

    def setShow(self, name):
        self.showName = name

    def setShot(self, name):
        self.shotName = name

    def jobtools(self):
        return JobTools(self.showName, self.shotName)


def test():
    var = inputO.width * columns
    var = inputO.height * rows / input0.pixel_aspect
    rint(sqrt(inputs))
    ceil(sqrt(inputs))

    var = input.width * columns
    var = input.height * rows

    ceil(sqrt(inputs))
    ceil(inputs/columns)
    var = input.width * rows

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


shot = mpc().jobtools().shotName()

viw = nuke.createNode('Viewer', 'name %s' % shot)
viw['note_font'].setValue('DejaVu Sans Bold')
viw['hide_input'].setValue(True)

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

sel = nuke.selectedNode()
NoCamSelected = 'Select nukeCamera not <b>hubCamera '

# check if the node is a camera node

if sel.Class() == 'Camera2' or sel.Class() == 'Camera':
    nuke.message(sel.name())
else:
    nuke.message(NoCamSelected)

 # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 # nuke switch node tile color.


sel = nuke.selectedNode()
Layername = sel['file'].value().split('/')[6]
pan = nuke.Panel('print file name' 550)
pan.addSingleLineInput('Filename', 'Layername')
pan.addButton('OK')
pan.addButton('Cancel')
val = pan.value('Layer Name')

result = pan.show()
if result == True:
    print val


# ---------------------------------------------------------------------------------------------
# poerator
# version : 01
# Last update Apr 11, 16:15
# Thanks to HTMLDigger for improve this application.
# -------------------------------------------------------------------------------------------------

< center > < img src = 'Color.png' > hubControl


def operationSwitcher():
  node = nuke.selectedNode()
  merge_ops = {'stencil': 'mask', 'over': 'under', 'from': 'plus', 'out': 'in'}
  if node.Class() == "Merge2":
    current_op = noderoperationi.value()
    if current_op in merge_ops.keys():
      noderoperationi.setValue(merge_ops[nodel'operationl.value()])
    elif current_op in merge_ops.values():
      noderoperationi.setValue(merge_ops.keys()(merge_ops.values().index(current_op)])


# Add to edit menu
nuke.menu('Nuke').addCommand('Edit/Switch Operation',
                             operationSwitcher, "ctrl+shift+s")
nuke.menu('Nuke').addCommand('Edit/Switch Operation',
                             operationSwitcher, "ctrl+shift+s")


# Coustome Lable

txt = nuke.getInput('Change label', 'new label')
t txt:
  for n in nuke.selectedNodes():
    nrlabell.setValue(txt)


pan = nuke.Panel('MPC Plugin')
choices = 'htmldigger BANGTooll
pan.addEnumerationPulldown('choice:', choices)
pan.show()

[value[[topnode].shot]
[value[[topnode]layerVersion]
[value[[topnode].currentStatus]
[value[[topnode].artist]


- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
ns = nuke.selectedNodes()
k = n.knob('transform')
val = k.value()
for n in ns:
     n['label'].setValue('Transfom :' + val)



nsn = nuke.selectedNode()
tra = nsn.knob('transform')
print tra

value = tra.value()

result = nuke.frame()

nsn[label].setValue('transform : ' value)

m.addCommand("FT_Cameralloise_v1", "nuke.createNode(\"FT_Cameralloise_v1\1")

nuke.knobDefault('Tracker4.label',
                 "Motion: [value transform]\nRef Frame: [value reference frame]")

# useAsInputProcess
toolbar.addCommand('test/tet', 'import test', 'Ctrl+;')
toolbar.addCommand(
    'test/tet', 'nuke.createNode("Saturation", "saturation 4"); useAsInputProcess()', 'Ctrl+;')


# hubRead layerFilter chenger
ns = nuke.selectedNodes()
for s in ns:
   s.knob('layerFilter').setValue(9)



# add job folder in nuke favoriteDir
try:
    path = "/jobs/%s/%s/roto/spline/nuke_splines" % (os.environ['JOB'], os.environ['SHOT'])
    nuke.addFavoriteDir('Roto Splines', 'path', icon=Roto.png)
except:
    pass
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

parent.box.x parent.overscan
parent.box.y parent.overscan
parent.box.r parent.overscan
parent.box.t parent.overscan

# Color knob name using <HTML>

< font color = "#555753" > your shot number < /font >
<b > <font color = "#4E9A06", auto find $gui nodes < / font > </b >
< font color = "#FF0000" > remove $gui expression < / font >
"< font size =\"5\"> <span style = color:  # 575757;\">Looper<font size=\"2\"><span style=\"color:#5a5a5a;\"> v1.1 &nbsp; | &nbsp; <font size=\"1\">B Y &nbsp; H T M L D i g g e r &nbsp; R i o n"}
"color:#575757;>Comma<font size=2><span style=color:#5aSaSa;> v1.1 &nbsp; l&nbsp; <font size=1>B Y &nbsp; A N U P A M &nbsp; B I S W A S"


# ----------------------- some Python ------------------------------------

b = nuke.selectedNode()
k = nuke.Channel_Knob('myctrl', Channel_Knob)
b.addKnob(k)

print(nuke.selectedNode().knobs().keys())


def deletevi():
    for v in nuke.allNodes('Viewer'):
        nuke.delete(v)
nuke.sddOnScriptLoad(deleteviewer)


# Radio button in nuke-----------------------------------------------------------

n = nuke.toNode('Group2')
r = nuke.Radio_knob('Channel', Channels: ('red', 'green', 'blue', 'alpha'))
n.addKnob(r)

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


nuke.addOnCreate(nuke.message, args-('ok go ahead'), nodeCiass=Grade9


nuke.nodeCopy(nukescripts.cut_paste_file())                                                                                                                                                     nuke.nodePaste(nukescripts.cut_paste_file())
nuke.nodePaste(nukescripts.cut_paste_file())
nuke.showDag(nuke.selectedNode()
