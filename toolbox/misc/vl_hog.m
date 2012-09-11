% VL_HOG Compute HOG features
%   HOG = VL_HOG(IM, CELLSIZE) computes the HOG features for image IM
%   and the specified CELLSIZE. IM can be either grayscale or colour
%   in SINGLE storage class. HOG is an array of cells: its number
%   of columns is approximately the number of columns of IM divided
%   by CELLSIZE and the same for the number of rows. The third
%   dimension spans the feature compoents.
%
%   PERM = VL_HOG('permutation') returns the left-right permutation
%   to apply to each HOG cell to flip it.
%
%   IMAGE = VL_HOG('render', HOG) returns an IMAGE containing an
%   iconic representation of the array of cells HOG.
%
%   Options:
%
%   Variant:: 'UoCTTI'
%     Choose a HOG variant: 'UoCTTI' or 'Dalal-Triggs'.
%
%   NumOrientations:: 9
%     Choose a number of undirected orientations in the orientation
%     histograms. The angle [0,pi) is divided in to NumOrientation
%     equal parts.
%
%   DirectedPolarField::
%     By specifying this flag the image IM is interpreted as samples
%     from a 2D vector field specified by their argument and
%     modulus.
%
%   Example:: computing and visualizing HOG features
%     hog = vl_hog(im2single(im)) ; % compute HOG features

% Author: Andrea Vedaldi

% AUTORIGHTS