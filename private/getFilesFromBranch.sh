# get the PR into a branch
git fetch origin pull/30856/merge:pr30856

# check out files that are relavent
git checkout pr30856 -- Framework/API/inc/MantidAPI/IPeaksWorkspace.h
git checkout pr30856 -- Framework/DataObjects/CMakeLists.txt
git checkout pr30856 -- Framework/DataObjects/inc/MantidDataObjects/LeanElasticPeakColumn.h
git checkout pr30856 -- Framework/DataObjects/inc/MantidDataObjects/LeanElasticPeaksWorkspace.h
git checkout pr30856 -- Framework/DataObjects/inc/MantidDataObjects/PeaksWorkspace.h
git checkout pr30856 -- Framework/DataObjects/src/LeanElasticPeakColumn.cpp
git checkout pr30856 -- Framework/DataObjects/src/LeanElasticPeaksWorkspace.cpp
git checkout pr30856 -- Framework/DataObjects/src/PeaksWorkspace.cpp
git checkout pr30856 -- Framework/DataObjects/src/PropertyWithValue.cpp
git checkout pr30856 -- Framework/DataObjects/test/LeanElasticPeakColumnTest.h
git checkout pr30856 -- Framework/DataObjects/test/LeanElasticPeaksWorkspaceTest.h
git checkout pr30856 -- Framework/Kernel/src/Property.cpp
git checkout pr30856 -- Framework/PythonInterface/mantid/api/src/Exports/IPeaksWorkspace.cpp
git checkout pr30856 -- Framework/PythonInterface/mantid/api/src/Exports/SpectrumInfo.cpp
git checkout pr30856 -- Framework/PythonInterface/mantid/dataobjects/CMakeLists.txt
git checkout pr30856 -- Framework/PythonInterface/mantid/dataobjects/src/Exports/LeanElasticPeaksWorkspace.cpp
git checkout pr30856 -- Framework/PythonInterface/test/python/mantid/api/SpectrumInfoTest.py
git checkout pr30856 -- qt/widgets/common/src/WorkspaceIcons.cpp