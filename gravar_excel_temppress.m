function gravar_excel_temppress(nome,tempo,press,temp,caminho)

%%
mensagem=improved_xlswrite([caminho '\' nome],{'TEMPERATURA E PROFUNDIDADE'},...
    'Temperatura e profundidade','A1');

mensagem=improved_xlswrite([caminho '\' nome],{'Data'},...
    'Temperatura e profundidade','A3');
mensagem=improved_xlswrite([caminho '\' nome],{'Temperatura (�C)'},...
    'Temperatura e profundidade','B3');
mensagem=improved_xlswrite([caminho '\' nome],{'Profundidade (m)'},...
    'Temperatura e profundidade','C3');
mensagem=improved_xlswrite([caminho '\' nome],{'Temperatura (�C)'},...
    'Temperatura e profundidade','F3');
mensagem=improved_xlswrite([caminho '\' nome],{'Profundidade (m)'},...
    'Temperatura e profundidade','G3');
mensagem=improved_xlswrite([caminho '\' nome],{'M�nimo'},...
    'Temperatura e profundidade','E4');
mensagem=improved_xlswrite([caminho '\' nome],{'M�ximo'},...
    'Temperatura e profundidade','E5');
mensagem=improved_xlswrite([caminho '\' nome],{'M�dia'},...
    'Temperatura e profundidade','E6');
mensagem=improved_xlswrite([caminho '\' nome],{'Amplitude'},...
    'Temperatura e profundidade','E7');
mensagem=improved_xlswrite([caminho '\' nome],{'A profundidade est� referenciada � altura do sensor de press�o'},...
    'Temperatura e profundidade','E9');

%%
max_temp=nanmax(temp);max_press=nanmax(press);med_temp=nanmean(temp);med_press=nanmean(press);
amp_temp=nanmax(temp)-min(temp);amp_press=nanmax(press)-min(press);
temp(isnan(temp))=999;
press(isnan(press))=999;
mensagem=improved_xlswrite([caminho '\' nome],tempo-693960,...
    'Temperatura e profundidade','A4');
mensagem=improved_xlswrite([caminho '\' nome],temp,...
    'Temperatura e profundidade','B4');
mensagem=improved_xlswrite([caminho '\' nome],press,...
    'Temperatura e profundidade','C4');
mensagem=improved_xlswrite([caminho '\' nome],nanmin(temp),...
    'Temperatura e profundidade','F4');
mensagem=improved_xlswrite([caminho '\' nome],nanmin(press),...
    'Temperatura e profundidade','G4');
mensagem=improved_xlswrite([caminho '\' nome],max_temp,...
    'Temperatura e profundidade','F5');
mensagem=improved_xlswrite([caminho '\' nome],max_press,...
    'Temperatura e profundidade','G5');
mensagem=improved_xlswrite([caminho '\' nome],med_temp,...
    'Temperatura e profundidade','F6');
mensagem=improved_xlswrite([caminho '\' nome],med_press,...
    'Temperatura e profundidade','G6');
mensagem=improved_xlswrite([caminho '\' nome],amp_temp,...
    'Temperatura e profundidade','F7');
mensagem=improved_xlswrite([caminho '\' nome],amp_press,...
    'Temperatura e profundidade','G7');

% xls_delete_sheets([nome '.xls'],{'Plan1';'Plan2';'Plan3'})

warning on
end