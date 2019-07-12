i= [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];
results= [];
 for C= i:i+4;
    for s= i:i+4;
      results = [results ; C s];
    endfor
    endfor
  results
