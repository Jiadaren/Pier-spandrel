clear all;
clc;

% ---------------- Input ----------------
disp_SW_1_as_built = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","B5:B5082");
load_SW_1_as_built = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","C5:C5082");
disp_SW_1_repaired = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","E5:E6494");
load_SW_1_repaired = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","F5:F6494");
disp_SW_1_retrofit = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","H5:H10478");
load_SW_1_retrofit = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","I5:I10478");
disp_SW_2_retrofit = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","K5:K7407");
load_SW_2_retrofit = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","L5:L7407");
disp_NUM_as_built = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","N5:N322662");
load_NUM_as_built = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","O5:O322662");
disp_NUM_retrofit = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","Q5:Q800004");
load_NUM_retrofit = readmatrix("Spandrel_results_summary.xlsx","Sheet","Sheet1","Range","R5:R800004");

% ---------------- Plot ----------------
figure(1);hold on;grid on; box on;
filename = 'Figure_11_a';
plot(disp_SW_1_as_built, load_SW_1_as_built, 'k', 'linewidth', 1.0)
hold on;
plot(disp_SW_1_repaired, load_SW_1_repaired, '--', 'linewidth', 1.0, 'color', [0.5 0.5 0.5])
hold on;
plot(disp_SW_1_retrofit, load_SW_1_retrofit, '--', 'linewidth', 1.0, 'color', [0.6350 0.0780 0.1840])
xlim ([-0.5 50]);
ylim ([0 80]);
xlabel('Vertical displacement (mm)', 'fontsize', 12, 'fontweight','b', 'FontName', 'Times')
ylabel('Shear (kN)', 'fontsize', 12, 'fontweight','b', 'FontName', 'Times')
legend('SW-1 as-built','SW-1 repaired','SW-1 retrofitted','Location','southeast', 'FontName', 'Times')
W=5; H=3;
set(gca, 'fontsize', 12, 'FontName', 'Times');
set(gca, 'fontsize', 12);
set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [W H]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 W H]);
print('-depsc','-r800',filename);
print('-dtiff','-r800',filename);
saveas(gcf, [filename,'.fig']);

figure(2);hold on;grid on; box on;
filename = 'Figure_11_b';
plot(disp_SW_1_as_built, load_SW_1_as_built, 'k', 'linewidth', 1.0)
hold on;
plot(disp_SW_2_retrofit, load_SW_2_retrofit, 'linewidth', 1.0, 'color', [0.6350 0.0780 0.1840])
xlim ([-0.5 40]);
ylim ([0 80]);
xlabel('Vertical displacement (mm)', 'fontsize', 12, 'fontweight','b', 'FontName', 'Times')
ylabel('Shear (kN)', 'fontsize', 12, 'fontweight','b', 'FontName', 'Times')
legend('SW-1 as-built','SW-2 retrofitted','Location','southeast', 'FontName', 'Times')
W=5; H=3;
set(gca, 'fontsize', 12, 'FontName', 'Times');
set(gca, 'fontsize', 12);
set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [W H]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 W H]);
print('-depsc','-r800',filename);
print('-dtiff','-r800',filename);
saveas(gcf, [filename,'.fig']);

figure(3);hold on;grid on; box on;
filename = 'Figure_15_a';
plot(disp_SW_1_as_built, load_SW_1_as_built, 'linewidth', 1.0, 'Color', [0.5 0.5 0.5])
hold on;
plot(disp_NUM_as_built, load_NUM_as_built, 'linewidth', 1.0, 'Color', [0.6350 0.0780 0.1840])
xlim ([-0.5 10]);
ylim ([0 100]);
xlabel('Vertical displacement (mm)', 'fontsize', 12, 'fontweight','b', 'FontName', 'Times')
ylabel('Shear (kN)', 'fontsize', 12, 'fontweight','b', 'FontName', 'Times')
legend('SW-1 as-built','Numerical','Location','northeast', 'FontName', 'Times')
W=5; H=3;
set(gca, 'fontsize', 12, 'FontName', 'Times');
set(gca, 'fontsize', 12);
set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [W H]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 W H]);
print('-depsc','-r800',filename);
print('-dtiff','-r800',filename);
saveas(gcf, [filename,'.fig']);

figure(4);hold on;grid on; box on;
filename = 'Figure_15_b';
plot(disp_SW_2_retrofit, load_SW_2_retrofit, 'linewidth', 1.0, 'Color', [0.5 0.5 0.5])
hold on;
plot(disp_NUM_retrofit, load_NUM_retrofit, 'linewidth', 1.0, 'Color', [0.6350 0.0780 0.1840])
xlim ([-0.5 45]);
ylim ([0 100]);
xlabel('Vertical displacement (mm)', 'fontsize', 12, 'fontweight','b', 'FontName', 'Times')
ylabel('Shear (kN)', 'fontsize', 12, 'fontweight','b', 'FontName', 'Times')
legend('SW-2 retrofitted','Numerical','Location','northeast', 'FontName', 'Times')
W=5; H=3;
set(gca, 'fontsize', 12, 'FontName', 'Times');
set(gca, 'fontsize', 12);
set(gcf, 'PaperUnits', 'inches');
set(gcf, 'PaperSize', [W H]);
set(gcf, 'PaperPositionMode', 'manual');
set(gcf, 'PaperPosition', [0 0 W H]);
print('-depsc','-r800',filename);
print('-dtiff','-r800',filename);
saveas(gcf, [filename,'.fig']);
