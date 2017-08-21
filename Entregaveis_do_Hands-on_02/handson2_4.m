clear all;clc;close all;
tf = 0.3;                                     % Duração de cada tom
% Diconário de notas musicais
% Do = 1; Ré = 2; Mi = 3; Fá = 4; Sol = 5; Lá = 6; Si = 7; Silêncio = 0
% Vetor de "música", usando o dicionário de notas pré-definido
vtmusic = [1 2 3 4 0 4 4 0 1 2 1 2 0 2 2 0 1 5 4 3 0 3 3 0 1 2 3 4 0 4 4];
fdo = 512;                                    % Frequência da nota Dó (Hz)
vtTom2Freq = [1 9/8 5/4 4/3 3/2 5/3 15/8 2];  % Relação de frequências entre as notas musicais
for iplay = vtmusic                           % Loop de geração e reprodução da música 
    if iplay == 0                             % Implementação do silêncio
        pause(tf);
    else
        fs = vtTom2Freq(iplay)*fdo;           % Escolhe a frequência do tom corrente
        fa = 100*fs;                          % Escolhe a frequência de amostragem do tom corrente
        t = 0:1/fa:tf;                        % Gera o eixo do tempo para o tom corrente
        y=cos(2*pi*fs*t)+0.8*cos(2*pi*0.01*fs*t)+0.8*cos(-2*pi*0.01*fs*t);  
        sound(y, fa);
        pause(tf);                            % Pausa com a duração do som a ser escutado (antes de tocar o próximo tom)
    end
end
