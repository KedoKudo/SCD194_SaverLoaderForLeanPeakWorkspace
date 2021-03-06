#!/usr/bin/env python

from mantid.simpleapi import *

# PeaksWorkspace
ws = LoadEmptyInstrument(InstrumentName='TOPAZ')
peaks = CreatePeaksWorkspace(ws)
SaveNexus(peaks, Filename='peaks.nxs')
peaks_loaded = LoadNexus('peaks.nxs')
CompareWorkspaces(peaks, peaks_loaded) # The workspaces "peaks" and "peaks_loaded" matched!

# LeanElasticPeaksWorkspace
leanpeaks = WorkspaceFactory.createPeaks('LeanElasticPeaksWorkspace')
AnalysisDataService.addOrReplace('leanpeaks',leanpeaks)
SetUB(leanpeaks)
leanpeaks.addPeak(leanpeaks.createPeakHKL((1,0,0)))
leanpeaks.addPeak(leanpeaks.createPeakHKL((1,1,0)))
SaveNexus(leanpeaks, Filename='leanpeaks.nxs') # This runs surprisingly, but produces a file that is missing all the workpsace information
leanpeaks_loaded = LoadNexus('leanpeaks.nxs') # This fails as the file is missing a lot of the requied data
CompareWorkspaces(leanpeaks, leanpeaks_loaded) # Once everything is completed this should run successfully
