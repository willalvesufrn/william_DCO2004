function varargout = teclado_will(varargin)
% TECLADO_WILL MATLAB code for teclado_will.fig
%      TECLADO_WILL, by itself, creates a new TECLADO_WILL or raises the existing
%      singleton*.
%
%      H = TECLADO_WILL returns the handle to a new TECLADO_WILL or the handle to
%      the existing singleton*.
%
%      TECLADO_WILL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TECLADO_WILL.M with the given input arguments.
%
%      TECLADO_WILL('Property','Value',...) creates a new TECLADO_WILL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before teclado_will_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to teclado_will_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help teclado_will

% Last Modified by GUIDE v2.5 20-Aug-2017 19:54:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @teclado_will_OpeningFcn, ...
                   'gui_OutputFcn',  @teclado_will_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before teclado_will is made visible.
function teclado_will_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to teclado_will (see VARARGIN)

% Choose default command line output for teclado_will
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes teclado_will wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = teclado_will_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executa a tecla
function teclar(multiplicador)
	% Parâmetros da onda
	tf = 1;                   			% Tempo de duração da nota
	fc = 512;                 			% Frequência da nota Dó
	fs = 100*fc;              			% Frequência de amostragem da nota. 
	t = 0:1/fs:tf;            			% Vetor tempo. Para cada elemento do vetor t, haverá um elemento em y correspondente.
	A = 1;                    			% Amplitude do sinal
	y=A*cos(2*pi*fc*t*multiplicador);	% Sinal senoidal
	plot(t,y);                			% Visualizar o sinal gerado  
	axis([0 0.02 -2 2 ]);     			% Zoom para melhor visualização
	p = audioplayer(y, fs);   			% Reproduzir o sinal gerado
	play(p);                  			% Reproduzir o sinal gerado
	pause(tf);                			% Forçar uma pausa com a duração do som a ser escutado

% --- Executes on button press in do.
function do_Callback(hObject, eventdata, handles)
	set(handles.nota, 'string', 'Do');
	teclar(1)
% hObject    handle to do (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in re.
function re_Callback(hObject, eventdata, handles)
	set(handles.nota, 'string', 'Re');
	teclar(9/8)
% hObject    handle to re (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in mi.
function mi_Callback(hObject, eventdata, handles)
	teclar(5/4)
% hObject    handle to mi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in fa.
function fa_Callback(hObject, eventdata, handles)
	teclar(4/3)
% hObject    handle to fa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sol.
function sol_Callback(hObject, eventdata, handles)
	teclar(3/2)
% hObject    handle to sol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in la.
function la_Callback(hObject, eventdata, handles)
	teclar(5/3)
% hObject    handle to la (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in si.
function si_Callback(hObject, eventdata, handles)
	teclar(15/8)
% hObject    handle to si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
