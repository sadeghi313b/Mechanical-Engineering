# Hydraulic Test Bench – دفترچه محاسبات، انتخاب قطعات و Part List

## 1. هدف و محدوده طراحی

این سند مبنای اولیه طراحی یک میز تست هیدرولیکی برای شیر هیدرولیک چدنی GG40 با فشار تست نامی **150 bar** است. مجموعه باید بتواند قطعه را ابتدا با یک جک هیدرولیک از بالا روی Hydraulic Test Block کلمپ کند، سپس فقط در صورت تأیید وضعیت کلمپ، روغن پرفشار را به مدار تست وارد کند. پس از پایان تست، ابتدا فشار تست قطع و خط تست تخلیه می‌شود؛ پس از افت فشار کلمپ تا محدوده مجاز، جک به حالت آزاد برمی‌گردد و Safety Door اجازه بازشدن پیدا می‌کند.

> **وضعیت این سند:** Preliminary Engineering Design. ابعاد واقعی شیارهای O-ring، حجم مدار، دبی واقعی موردنیاز شیر، زمان مطلوب برای رسیدن به 150 bar، نوع روغن و ابعاد دقیق فریم هنوز باید قبل از خرید نهایی تأیید شوند.

---

## 2. داده‌های ورودی طراحی

| Parameter | Design Value |
|---|---:|
| Test pressure | 150 bar |
| Desired clamp force | 3 tonf |
| Press maximum force | 5 tonf |
| Press adjustable range | 0.5–5 tonf |
| Test part material | GG40 Grey Cast Iron |
| Test part size | 100 × 80 × 70 mm |
| Upper pressure port diameter | 15 mm |
| Upper drain port diameter | 20 mm |
| Lower pressure port diameter | 20 mm |
| Lower drain port diameter | 25 mm |
| Nominal hydraulic system capacity | Up to 40 L/min |
| Test pressure maximum | 150 bar nominal; hardware selection ≥200 bar |
| Main pressure design margin | Components rated ≥200 bar |
| Clamp cylinder type | Single-acting, spring return |
| Clamp cylinder stroke | Approximately 100 mm |
| Hydraulic fluid | Mineral hydraulic oil, e.g. HLP/HM class, subject to component compatibility |
| Test principle | Static pressure / leakage test |
| Safety enclosure | Interlocked powered door |

---

# 3. Proposed Hydraulic Architecture

مدار پیشنهادی به دو بخش اصلی تقسیم می‌شود:

### A – Clamp Circuit

`Tank → Pump → Main Pressure Relief → Clamp Pressure Control → Solenoid Valve → Clamp Cylinder`

این مدار وظیفه تولید نیروی 0.5 تا 5 tonf را دارد. برای حالت عادی تست، Setpoint کلمپ در حدود 3 tonf تنظیم می‌شود.

### B – Test Pressure Circuit

`Tank → Pump → Main Relief → Test Pressure Valve → Test Block → Test Valve → Accumulator → Return/Drain`

در حالت Test، شیر برقی Pressure Test فقط زمانی مجاز به بازشدن است که:

1. Safety Door بسته باشد.
2. Clamp Cylinder در موقعیت صحیح باشد.
3. Clamp Pressure Switch/Transducer رسیدن فشار کلمپ به Setpoint را تأیید کرده باشد.
4. خط تست در وضعیت صحیح باشد.
5. خطا یا Emergency Stop فعال نباشد.

---

# 4. نکته مهم درباره فشار و نیروی کلمپ

فشار 150 bar به‌تنهایی تعیین‌کننده نیروی موردنیاز کلمپ نیست. نیروی جداکننده واقعی باید از **سطح مؤثر تحت فشار، هندسه آب‌بندی‌ها، فاصله O-ringها، مسیرهای داخلی شیر و احتمال بارگذاری موضعی** محاسبه شود.

برای طراحی اولیه، چون کارفرما نیروی کلمپ 3 tonf را تعیین کرده است:

`F_clamp,target = 3 tonf = 29.42 kN`

و برای حالت پرس:

`F_press,max = 5 tonf = 49.03 kN`

پیشنهاد می‌شود در طراحی مکانیکی حداقل 10–20% ظرفیت اضافه نسبت به نیروی اسمی در نظر گرفته شود؛ اما ظرفیت نهایی باید با بررسی سازه، جک، پیچ‌ها، Clamp Head و Test Block تأیید شود.

---

# 5. انتخاب جک Clamp / Press

## 5.1 محاسبه سطح پیستون

برای فشار هیدرولیک:

F = P × A

برای تولید 5 tonf در 150 bar:

A = F/P = 49,033 / 15,000,000 = 0.003269 m²`

قطر تئوری:

D = sqrt(4A/π) = 64.5 mm`

بنابراین قطر 63 mm برای رسیدن مطمئن به 5 tonf در 150 bar کافی نیست:

F_63 = 15 MPa × π×0.063²/4 = 46.8 kN ≈ 4.77 tonf`

### انتخاب پیشنهادی

**Cylinder bore = 70 mm**

سطح:

A_70 = π×70²/4 = 3848 mm²`

نیروی تئوری در 150 bar:

F = 15×3848 = 57.7 kN ≈ 5.89 tonf`

بنابراین:

- در 3 tonf:

P = 29.42 kN / 3848 mm² = 76.5 bar`

- در 0.5 tonf:

P = 4.903 kN / 3848 mm² = 12.7 bar`

- در 5 tonf:

P = 49.03 kN / 3848 mm² = 127.4 bar`

این انتخاب امکان تنظیم نیرو را با Pressure Reducing/Relieving Valve فراهم می‌کند.

## 5.2 مشخصات پیشنهادی جک

| Item | Specification |
|---|---|
| Type | Single-acting hydraulic cylinder |
| Bore | 70 mm |
| Stroke | 100 mm |
| Working pressure | ≥150 bar |
| Rated pressure | Preferably ≥200 bar |
| Return | Spring return |
| Rod | Hardened/chrome plated steel |
| Mounting | Flange/clevis according to frame |
| Effective area | ≈3848 mm² |
| Force at 150 bar | ≈5.89 tonf theoretical |
| Force at 76.5 bar | ≈3.0 tonf theoretical |
| Force at 12.7 bar | ≈0.5 tonf theoretical |

**توجه:** نیروی واقعی باید با اصطکاک، افت فشار، راندمان و شرایط نصب اصلاح شود. برای کنترل دقیق نیروی Clamp، بهتر است Pressure Transducer در مدار جک نصب شود و Setpoint توسط PLC کنترل شود.

---

# 6. چرا Pressure Switch به‌تنهایی برای تنظیم نیروی پرس کافی نیست؟

Pressure Switch فقط وضعیت رسیدن فشار به یک Setpoint را تشخیص می‌دهد؛ خودش عنصر کنترل تناسبی فشار نیست.

برای مثال با جک 70 mm:

| Desired Force | Approx. Cylinder Pressure |
|---:|---:|
| 0.5 tonf | 12.7 bar |
| 1.0 tonf | 25.5 bar |
| 2.0 tonf | 51.0 bar |
| 3.0 tonf | 76.5 bar |
| 4.0 tonf | 101.9 bar |
| 5.0 tonf | 127.4 bar |

بنابراین برای Press قابل تنظیم، یک **Pressure Reducing Valve** یا **Proportional Pressure Control** لازم است. Pressure Switch/Transducer سپس مقدار فشار را برای کنترل و Interlock تأیید می‌کند.

---

# 7. پیشنهاد کنترل Clamp

مدار پیشنهادی:

`Pump → Relief Valve → Pressure Reducing Valve → 4/2 Solenoid Valve → Cylinder`

و در خط جک:

`Pressure Transducer + Pressure Switch`

### عملکرد

1. Operator فرمان Clamp می‌دهد.
2. Solenoid Valve مسیر روغن به جک را باز می‌کند.
3. جک پایین می‌آید.
4. با افزایش فشار، نیروی کلمپ افزایش می‌یابد.
5. PLC فشار را می‌خواند.
6. در حالت تست عادی، Setpoint تقریباً معادل 3 tonf است.
7. پس از رسیدن به Setpoint، فرمان Clamp قطع می‌شود.
8. یک Check Valve در مدار می‌تواند فشار کلمپ را در زمان تست حفظ کند.
9. اگر فشار کلمپ از حد پایین مجاز کمتر شود، Pressure Test باید فوراً قطع شود.

---

# 8. Pressure Switch و Pressure Transducer

## Pressure Switch

کاربرد:

- تأیید حداقل فشار Clamp
- Interlock برای اجازه شروع Pressure Test
- تشخیص افت فشار غیرمجاز

مشخصات پیشنهادی:

| Parameter | Specification |
|---|---|
| Type | Adjustable hydraulic pressure switch |
| Pressure range | 0–160 bar یا 0–250 bar |
| Connection | G1/4 or equivalent |
| Media | Hydraulic oil |
| Electrical output | SPDT / suitable PLC input |
| Pressure rating | ≥200 bar |

## Pressure Transducer

برای کنترل دقیق‌تر پیشنهاد می‌شود:

| Parameter | Specification |
|---|---|
| Range | 0–250 bar |
| Output | 4–20 mA |
| Supply | 24 VDC |
| Accuracy | ≤±0.5% FS preferred |
| Connection | G1/4 |
| Wetted parts | Stainless steel |
| Overpressure | ≥300 bar preferred |

Pressure Transducer برای نمایش و ثبت مقدار فشار بسیار بهتر از Pressure Switch است.

---

# 9. Main Hydraulic Pump

چون تست قطعه در این پروژه عمدتاً Static Pressure Test است، الزاماً لازم نیست پمپ 40 L/min را مستقیماً در فشار 150 bar نگه دارد. اگر 40 L/min واقعاً برای عملکرد شیر تحت تست لازم باشد، باید HPU بر اساس آن سایز شود.

## حالت پیشنهادی عمومی

برای یک Test Bench مستقل:

- Pump flow: حدود 10–20 L/min
- Maximum pressure: 180–200 bar
- Electric motor: حدود 5.5–7.5 kW، بسته به دبی واقعی و راندمان

اگر واقعاً باید **40 L/min در 150 bar** در دسترس باشد:

`P_hydraulic = Q × ΔP`

`Q = 40 L/min = 0.0006667 m³/s`

`P = 15 MPa`

`P_hydraulic ≈ 10 kW`

با لحاظ راندمان کل، موتور حدود **11–13 kW** یا انتخاب استاندارد نزدیک آن پیشنهاد می‌شود.

بنابراین قبل از خرید Pump/Motor باید مشخص شود که 40 L/min برای خود Test Bench لازم است یا فقط مشخصه شیر تحت تست است.

---

# 10. پیشنهاد HPU

| Component | Preliminary Specification |
|---|---|
| Reservoir | 60–100 L |
| Pump | Gear pump, 10–20 L/min |
| Max pressure | 180–200 bar |
| Motor | 5.5–7.5 kW |
| Motor speed | 1450 rpm preferred |
| Suction strainer | 100–125 μm |
| Return filter | 10 μm |
| Pressure filter | 5–10 μm if required |
| Breather | Filtered breather |
| Oil level gauge | Required |
| Oil temperature gauge | Recommended |
| Main relief valve | Adjustable, 160–180 bar |
| Pressure gauge | 0–250 bar |

---

# 11. Main Relief Valve

وظیفه:

- حفاظت کل سیستم در برابر Overpressure
- جلوگیری از عبور فشار از حد طراحی

پیشنهاد:

| Parameter | Specification |
|---|---|
| Type | Direct acting or pilot operated relief valve |
| Range | Approximately 50–200 bar |
| Normal setting | According to system design |
| Rated pressure | ≥250 bar |
| Flow capacity | ≥maximum pump flow |
| Connection | According to manifold |

اگر فشار تست دقیقاً 150 bar است، Relief Valve نباید صرفاً روی 150 bar تنظیم شود بدون بررسی رفتار سیستم. بهتر است Test Pressure توسط یک Pressure Reducing/Control element تنظیم و Main Relief به‌عنوان حفاظت ثانویه در سطح مناسب قرار گیرد.

---

# 12. Test Pressure Control

پیشنهاد:

`Pump → Main Relief → Pressure Reducing/Sequence/Pressure Control → Test Solenoid Valve → Test Block`

برای Test Pressure، بهتر است یک **Pressure Reducing Valve قابل تنظیم** یا در صورت نیاز **Proportional Pressure Valve** استفاده شود.

محدوده پیشنهادی:

`0–160 bar` یا `0–200 bar`

Setpoint معمول:

`150 bar`

برای جلوگیری از Overshoot، استفاده از Pressure Transducer و PLC بسیار مناسب است.

---

# 13. Test Pressure Solenoid Valve

این شیر باید با فرمان PLC/Operator مسیر فشار به Test Block را باز کند.

پیشنهاد:

| Parameter | Specification |
|---|---|
| Type | 2/2 normally closed solenoid valve |
| Port | G1/2 approximately, subject to flow |
| Pressure rating | ≥200 bar |
| Flow rating | ≥required test flow |
| Coil | 24 VDC |
| Wetted fluid | Hydraulic oil |
| Function | Pressure ON/OFF |

برای Test Bench ایمن، **Normally Closed** بودن این شیر در حالت بی‌برق توصیه می‌شود.

---

# 14. Depressurization Valve

پس از اتمام تست، فشار نباید صرفاً با خاموش کردن پمپ باقی بماند.

یک شیر تخلیه لازم است:

`Test Line → 2/2 NC/NO Depressurization Valve → Tank`

پیشنهاد:

- 2/2 solenoid valve
- Rated pressure ≥200 bar
- Flow capacity مناسب
- 24 VDC

منطق:

`Pressure OFF → Depressurization ON → Pressure < safe limit → Clamp Release`

---

# 15. Check Valve در مدار Clamp

برای حفظ فشار جک هنگام Test:

`Pressure Control → Check Valve → Cylinder`

پیشنهاد:

- Cracking pressure کم
- Rated pressure ≥250 bar
- Leakage بسیار کم
- مناسب روغن هیدرولیک

اگر نیاز به تخلیه کنترل‌شده باشد، مسیر Pilot-operated check valve بهتر است.

---

# 16. Flow Control Valve برای سرعت جک

برای کنترل سرعت Clamp:

- Meter-in یا Meter-out بر اساس پایداری سیستم
- Pressure compensated flow control در صورت نیاز
- Needle/flow control valve برای تنظیم سرعت اولیه

هدف:

- جلوگیری از برخورد شدید Clamp Head با قطعه
- کاهش Shock
- کنترل زمان Clamp

---

# 17. Accumulator Block

طبق طراحی اولیه، Accumulator روی یک بلوک مجزا قرار دارد.

وظایف احتمالی:

1. کاهش نوسان فشار
2. جذب Pressure Spike
3. کمک به حفظ فشار Test
4. کاهش Cycling پمپ در صورت طراحی مناسب

### انتخاب اولیه

برای Test Bench کوچک، Accumulator حدود:

`0.5–2 L`

می‌تواند نقطه شروع باشد، ولی حجم نهایی باید با توجه به:

- حجم کل مدار
- افت فشار مجاز
- مدت نگهداری فشار
- مقدار Leakage مجاز
- نرخ افت فشار قابل قبول

محاسبه شود.

**Accumulator باید حتماً با Safety Block و امکان Isolate/Depressurize شدن تجهیز شود.**

---

# 18. Accumulator Safety Block

اجزای پیشنهادی:

- Isolation valve
- Check valve
- Safety relief
- Pressure gauge
- Drain/depressurization valve

فشار Pre-charge باید طبق محاسبات Accumulator تعیین شود و نباید به‌صورت حدسی تنظیم شود.

---

# 19. Pressure Gauge

حداقل دو Gauge توصیه می‌شود:

### Gauge 1 – Clamp Pressure

Range:

`0–160 bar` یا `0–250 bar`

### Gauge 2 – Test Pressure

Range:

`0–250 bar`

برای خوانایی مناسب، انتخاب Gauge با Full Scale حدود 1.5 تا 2 برابر فشار کاری مناسب است.

برای فشار تست 150 bar:

**0–250 bar** انتخاب مناسبی است.

Gauge بهتر است با:

- glycerin filling
- shock-resistant design
- stainless steel case
- accuracy class ≤1.0

انتخاب شود.

---

# 20. Test Block

Test Block باید حداقل فشار کاری:

`≥200 bar`

و ترجیحاً:

`≥250 bar`

داشته باشد.

جنس پیشنهادی باید بر اساس تحلیل تنش و رزوه‌ها انتخاب شود. برای بلوک فشار 150 bar، استفاده از فولاد مناسب ماشین‌کاری‌شده مانند:

- C45
- 42CrMo4

قابل بررسی است.

برای GG40 Test Valve، خود قطعه تست نباید بدون بررسی تنش و ضخامت دیواره در معرض فشاری بالاتر از فشار مجاز آن قرار گیرد.

---

# 21. O-ring Sealing

در این Test Bench آب‌بندی دو ناحیه بسیار مهم است:

1. `Test Block ↔ Test Valve`
2. `Test Valve ↔ Clamp Head`

انتخاب O-ring باید بر اساس:

- Groove dimensions
- squeeze
- stretch
- extrusion gap
- pressure
- temperature
- hydraulic fluid
- static sealing condition

انجام شود.

برای فشار 150 bar، در صورت وجود Clearance زیاد، **Backup Ring** می‌تواند لازم باشد.

برای انتخاب سایز O-ring نباید فقط قطر سوراخ را ملاک قرار داد؛ ابتدا باید شیار واقعی اندازه‌گیری و مطابق استاندارد طراحی شود.

---

# 22. Hose

تمام شیلنگ‌های Pressure Test باید حداقل دارای:

`Working Pressure ≥200 bar`

و ترجیحاً Safety Factor مناسب طبق سازنده باشند.

برای مدارهای اصلی:

- Hydraulic hose
- SAE 100R2 / EN 853 2SN یا معادل مدرن
- Pressure rating ≥200 bar

برای اتصال‌های 150 bar، انتخاب شیلنگ با Working Pressure حداقل 250 bar ترجیح داده می‌شود.

---

# 23. Hydraulic Fittings

پیشنهاد:

- Steel fittings
- Rated pressure ≥250 bar
- ORFS / SAE J514 / BSPP according to design
- Avoid unnecessary adapters
- Minimize number of threaded joints

برای Pressure Test بهتر است در صورت امکان از **ORFS** یا اتصالاتی با sealing قابل اطمینان استفاده شود.

---

# 24. Hydraulic Tubing

در قسمت‌های ثابت Test Bench، استفاده از tube فولادی به جای شیلنگ توصیه می‌شود.

مزایا:

- کاهش شیلنگ‌های آزاد
- افزایش ایمنی
- کاهش تغییر حجم مدار
- کاهش حرکت تحت فشار
- ظاهر صنعتی بهتر

شیلنگ فقط برای بخش‌های متحرک یا اتصال‌هایی که نیاز به انعطاف دارند استفاده شود.

---

# 25. Filter

## Return Filter

پیشنهاد:

`10 μm`

با Indicator اختلاف فشار.

## Suction Strainer

حدود:

`100–125 μm`

برای حفاظت Pump.

## Pressure Filter

در صورت نیاز:

`5–10 μm`

با Pressure rating مناسب.

---

# 26. Reservoir

برای HPU با پمپ 10–20 L/min:

`Tank ≈ 60–100 L`

به‌عنوان مقدار اولیه مناسب است.

قاعده دقیق حجم مخزن باید با:

- duty cycle
- heat dissipation
- pump flow
- residence time
- oil temperature

تأیید شود.

اجزای مخزن:

- Filler/breather
- Level gauge
- Drain plug
- Return diffuser
- Suction connection
- Temperature sensor
- Baffle

---

# 27. Electrical Control

پیشنهاد معماری:

`24 VDC Control`

اجزای اصلی:

- Main isolator
- 24 VDC power supply
- PLC
- Safety relay
- Emergency Stop
- Door safety switch/interlock
- Solenoid outputs
- Pressure switch inputs
- Pressure transducer analog input
- Clamp position sensor
- Door open/closed sensors
- Alarm buzzer
- Stack light

---

# 28. Safety Door Interlock

Safety Door باید دارای حداقل دو وضعیت قابل تشخیص باشد:

`DOOR CLOSED`

و

`DOOR OPEN`

برای فشار 150 bar توصیه می‌شود از **Safety-rated interlock** استفاده شود.

منطق:

### Door Open

- Test pressure valve = CLOSED
- Depressurization = ENABLED
- Clamp operation according to safety logic
- Pump/test sequence blocked

### Door Closed

هنوز اجازه Test داده نمی‌شود مگر اینکه Clamp OK باشد.

---

# 29. Clamp Safety Interlock

شرط اجازه Pressure Test:

`Door Closed`

AND

`Clamp Pressure ≥ Clamp Setpoint`

AND

`Clamp Position OK`

AND

`Test Line Depressurized before start`

AND

`Emergency Stop OK`

سپس:

`Test Pressure Solenoid = ENABLED`

---

# 30. افت فشار Clamp در حین تست

این قسمت بسیار مهم است.

فرض کنیم:

`Clamp Setpoint = 3 tonf`

نباید اجازه دهیم فشار کلمپ دقیقاً تا صفر سقوط کند و بعد واکنش نشان دهیم.

باید دو Setpoint داشته باشیم:

### Clamp OK

مثلاً:

`P_clamp ≥ P_OK`

### Clamp Low

مثلاً:

`P_clamp < P_LOW`

مثال اولیه، نه مقدار نهایی:

`P_OK ≈ 75–80 bar`

`P_LOW ≈ 65–70 bar`

در صورت:

`P_clamp < P_LOW`

سیستم باید:

1. Test Pressure Valve را ببندد.
2. Test line را depressurize کند.
3. Alarm بدهد.
4. Clamp را تا رفع خطا آزاد نکند.

مقادیر نهایی باید بر اساس نیروی واقعی Clamp و تست عملی تعیین شوند.

---

# 31. Sequence پیشنهادی PLC

```text
IDLE
 ↓
Door Close Check
 ↓
Clamp Command
 ↓
Clamp Cylinder Extend
 ↓
Clamp Pressure >= Setpoint ?
 ├── NO → Keep Clamping / Timeout Alarm
 └── YES
      ↓
Clamp Position OK ?
 ├── NO → Alarm
 └── YES
      ↓
Enable Test Pressure
      ↓
Pressure Ramp
      ↓
150 bar reached ?
 ├── NO → Timeout / Fault
 └── YES
      ↓
Hold Test Pressure
      ↓
Monitor Test Pressure
      ↓
Test Complete
      ↓
Close Test Pressure Valve
      ↓
Open Depressurization Valve
      ↓
Test Pressure ≈ 0
      ↓
Release Clamp
      ↓
Clamp Retracted
      ↓
Door Unlock
      ↓
Door Open
      ↓
END
```

---

# 32. شرط خطای Clamp قبل از Pressure Test

اگر:

`P_clamp < P_required`

و Operator فرمان Test بدهد:

`TEST COMMAND = REJECTED`

و:

`Alarm Buzzer = ON`

و:

`Test Pressure Valve = CLOSED`

این Interlock باید **Hardwired Safety Logic** یا حداقل یک کنترلر ایمن مناسب داشته باشد و صرفاً به HMI نرم‌افزاری وابسته نباشد.

---

# 33. Press Mode

برای تبدیل دستگاه از Test Bench به Press:

فقط Tooling جلوی جک تغییر کند.

### Test/Clamp Head

برای کلمپ قطعه.

### Press Tool

برای انتقال نیرو به قطعه دیگر.

جک مشترک:

`70 mm Bore × 100 mm Stroke`

نیروی قابل تنظیم با Pressure Reducing Valve:

`0.5–5 tonf`

نقطه‌های تقریبی:

| Force | Pressure |
|---:|---:|
| 0.5 tonf | 12.7 bar |
| 1.0 tonf | 25.5 bar |
| 2.0 tonf | 51.0 bar |
| 3.0 tonf | 76.5 bar |
| 4.0 tonf | 101.9 bar |
| 5.0 tonf | 127.4 bar |

برای Press Mode بهتر است یک Pressure Relief/Reducing مستقل یا Setting قابل قفل داشته باشیم تا Operator نتواند ناخواسته نیروی بیش از ظرفیت Tooling وارد کند.

---

# 34. محاسبه تقریبی سرعت جک

حجم موردنیاز برای Stroke = 100 mm:

`V = A × L`

برای Bore 70 mm:

`V ≈ 3848 mm² × 100 mm = 384,800 mm³`

`V ≈ 0.385 L`

اگر دبی 10 L/min باشد:

`t = 0.385 / 10 min ≈ 0.0385 min`

`≈ 2.3 s`

بنابراین جک در دبی 10 L/min تقریباً در 2.3 ثانیه Stroke کامل خواهد داشت، قبل از لحاظ محدودیت‌های واقعی شیر و مدار.

در عمل می‌توان با Flow Control سرعت را کاهش داد.

---

# 35. محاسبه توان هیدرولیکی

فرمول:

`P_hydraulic(kW) = p(bar) × Q(L/min) / 600`

در 150 bar و 20 L/min:

`P = 150 × 20 / 600 = 5 kW`

با فرض راندمان کل حدود 80%:

`P_motor ≈ 5/0.8 = 6.25 kW`

بنابراین موتور استاندارد:

`7.5 kW`

انتخاب مناسبی برای این سناریوی اولیه است.

در 40 L/min:

`P_hydraulic = 150 × 40 / 600 = 10 kW`

و موتور حدود:

`11–13 kW`

لازم خواهد بود.

---

# 36. پارت‌لیست هیدرولیک – Preliminary BOM

| No. | Component | Qty | Preliminary Specification |
|---:|---|---:|---|
| H-01 | Hydraulic Power Unit | 1 | 10–20 L/min, 180–200 bar |
| H-02 | Electric Motor | 1 | 7.5 kW, 1450 rpm, subject to final flow |
| H-03 | Hydraulic Gear Pump | 1 | 10–20 L/min, ≥200 bar |
| H-04 | Reservoir | 1 | 60–100 L |
| H-05 | Main Relief Valve | 1 | Adjustable, ≥200 bar |
| H-06 | Clamp Pressure Reducing Valve | 1 | 0–150/200 bar |
| H-07 | Clamp Solenoid Valve | 1 | 4/2, 24 VDC, ≥200 bar |
| H-08 | Test Pressure Solenoid Valve | 1 | 2/2 NC, 24 VDC, ≥200 bar |
| H-09 | Depressurization Solenoid Valve | 1 | 2/2, ≥200 bar |
| H-10 | Check Valve | 1 | ≥250 bar |
| H-11 | Pilot Operated Check Valve | 1 | ≥250 bar, recommended |
| H-12 | Flow Control Valve | 1–2 | Adjustable |
| H-13 | Pressure Gauge – Test | 1 | 0–250 bar |
| H-14 | Pressure Gauge – Clamp | 1 | 0–250 bar |
| H-15 | Pressure Transducer – Test | 1 | 0–250 bar, 4–20 mA |
| H-16 | Pressure Transducer – Clamp | 1 | 0–250 bar, 4–20 mA |
| H-17 | Clamp Pressure Switch | 1 | Adjustable, ≥200 bar |
| H-18 | Test Pressure Switch | 1 | Adjustable, ≥200 bar |
| H-19 | Accumulator | 1 | 0.5–2 L preliminary |
| H-20 | Accumulator Safety Block | 1 | Rated ≥250 bar |
| H-21 | Return Filter | 1 | 10 μm |
| H-22 | Suction Strainer | 1 | 100–125 μm |
| H-23 | Pressure Filter | 1 | 5–10 μm, optional |
| H-24 | Hydraulic Hose | As required | ≥250 bar WP preferred |
| H-25 | Steel Hydraulic Tube | As required | ≥250 bar |
| H-26 | Hydraulic Fittings | As required | ≥250 bar |
| H-27 | Isolation Ball Valve | As required | ≥250 bar |
| H-28 | Test Block | 1 | ≥200/250 bar design |
| H-29 | Clamp Cylinder | 1 | Ø70 × 100 mm, spring return |
| H-30 | Clamp Head | 1 | Custom |
| H-31 | Press Tool Head | 1 | Custom interchangeable |
| H-32 | O-ring Set – Test Block | As required | According to actual grooves |
| H-33 | O-ring Set – Clamp Head | As required | According to actual grooves |
| H-34 | Backup Ring | As required | If extrusion gap requires |
| H-35 | Tank Breather | 1 | Filtered |
| H-36 | Level Gauge | 1 | Tank mounted |
| H-37 | Temperature Sensor | 1 | Hydraulic oil |
| H-38 | Drain Valve | 1 | Tank |
| H-39 | PLC | 1 | 24 VDC, analog + digital I/O |
| H-40 | 24 VDC Power Supply | 1 | Sized for PLC/valves/sensors |
| H-41 | Safety Relay | 1 | Safety-rated |
| H-42 | Emergency Stop | 1–2 | Safety-rated |
| H-43 | Door Interlock | 1 | Safety-rated |
| H-44 | Door Position Sensor | 1–2 | Closed/open confirmation |
| H-45 | Alarm Buzzer | 1 | 24 VDC |
| H-46 | Stack Light | 1 | 3-color recommended |

---

# 37. قطعاتی که قبل از خرید باید نهایی شوند

موارد زیر هنوز نباید بدون اندازه‌گیری و محاسبه نهایی سفارش داده شوند:

1. O-ring size
2. O-ring groove dimensions
3. Backup ring dimensions
4. Accumulator volume
5. Pump displacement
6. Exact motor power
7. Test pressure flow requirement
8. Cylinder mounting dimensions
9. Clamp Head dimensions
10. Test Block wall thickness
11. Test Block material
12. Thread dimensions
13. Hydraulic hose sizes
14. Valve orifice sizes
15. PLC I/O count
16. Safety category/performance level
17. Required test holding time
18. Maximum permitted leakage
19. Acceptable pressure drop during test
20. Oil temperature range

---

# 38. پیشنهاد سایز اولیه خطوط

برای دبی 10–20 L/min:

| Line | Preliminary Size |
|---|---|
| Pump suction | DN20–DN25 |
| Main pressure | DN10–DN12 |
| Clamp circuit | DN8–DN10 |
| Test pressure | DN10–DN12 |
| Return | DN12–DN16 |
| Drain | DN8–DN10 |

این ابعاد صرفاً Preliminary هستند و باید بر اساس سرعت مجاز روغن و افت فشار نهایی شوند.

---

# 39. فلسفه طراحی ایمنی

در این دستگاه باید فرض شود که خرابی هرکدام از اجزای زیر ممکن است رخ دهد:

- Solenoid valve
- Pressure switch
- PLC
- Hose
- O-ring
- Accumulator
- Pressure regulator
- Door sensor

بنابراین یک Signal منفرد نباید به‌تنهایی مجوز ورود 150 bar را صادر کند.

حداقل زنجیره منطقی:

`Safety Door Closed`
+
`Clamp Pressure OK`
+
`Clamp Position OK`
+
`Test Line Ready`
+
`Emergency Stop Healthy`

سپس:

`TEST ENABLE`

---

# 40. توصیه مهم برای تست 150 bar

محفظه ایمنی فقط برای جلوگیری از تماس اپراتور با قطعه کافی نیست. باید در طراحی Safety Enclosure، **containment در برابر پرتاب قطعات و Hydraulic Fluid Jet** نیز بررسی شود.

در صورت شکست GG40، شکست Test Block، خروج O-ring یا جداشدن اتصال، انرژی آزادشده می‌تواند خطرناک باشد.

بنابراین ضخامت و نوع پنل Safety Guard باید بر اساس Risk Assessment و در صورت امکان آزمون/استاندارد مربوط به ماشین تعیین شود.

---

# 41. استانداردها و مراجع طراحی

استانداردهای زیر برای ادامه طراحی باید بررسی شوند:

- ISO 4413 – Hydraulic fluid power — General rules and safety requirements for systems and their components
- ISO 12100 – Safety of machinery — Risk assessment and risk reduction
- ISO 13849-1 – Safety-related parts of control systems
- ISO 13850 – Emergency stop function
- ISO 14119 – Interlocking devices associated with guards
- ISO 6020/2 و ISO 6022 – Hydraulic cylinders، بسته به نوع Cylinder انتخابی
- SAE J514 – Hydraulic tube fittings
- استاندارد سازنده برای Accumulator و Safety Block
- استاندارد/دستورالعمل سازنده برای O-ring و Groove Design

---

# 42. نتیجه انتخاب اولیه

برای نسخه اولیه Test Bench، پیشنهاد اصلی این است:

**Hydraulic Power Unit:**
`10–20 L/min, 180–200 bar`

**Motor:**
`7.5 kW` برای سناریوی 20 L/min در 150 bar، مشروط به تأیید دبی واقعی.

**Clamp/Press Cylinder:**
`Ø70 mm × 100 mm, single acting, spring return`

**Clamp force:**
`≈3 tonf at ≈76.5 bar`

**Maximum press force:**
`≈5.89 tonf theoretical at 150 bar`

**5 ton press force:**
`≈127.4 bar`

**0.5 ton press force:**
`≈12.7 bar`

**Test pressure:**
`150 bar`

**Test pressure gauge:**
`0–250 bar`

**Pressure transducers:**
`0–250 bar, 4–20 mA`

**Hydraulic hose:**
`Working pressure ≥250 bar preferred`

**Main relief:**
`≥200 bar rated`

**Accumulator:**
`0.5–2 L preliminary; final size by calculation`

**Control:**
`24 VDC PLC + Safety Relay + Door Interlock`

---

# 43. مرحله بعدی طراحی

قبل از خرید قطعات، مرحله بعد باید شامل **Hydraulic Circuit Diagram کامل** باشد.

در آن مدار باید دقیقاً مشخص شود:

- Tank
- Pump
- Motor
- Suction filter/strainer
- Main Relief
- Pressure gauge
- Clamp Pressure Reducing Valve
- Clamp Solenoid Valve
- Check Valve
- Pilot-operated Check Valve
- Flow Control
- Clamp Cylinder
- Test Pressure Valve
- Test Pressure Regulator
- Test Pressure Gauge
- Test Pressure Transducer
- Accumulator
- Accumulator Safety Block
- Depressurization Valve
- Return Filter
- Test Block
- Test Valve
- PLC
- Pressure Switches
- Safety Door Interlock

سپس باید برای هر خط، **P, Q, DN, fitting size و working pressure** مشخص شود و بعد BOM نهایی برای خرید تهیه شود.

> **تذکر مهندسی:** مقادیر این سند برای شروع طراحی هستند، نه تأیید نهایی ساخت. به‌خصوص Test Block، Clamp Head، O-ring grooves، Accumulator، فشار واقعی موردنیاز Clamp و Safety Guard باید قبل از ساخت نهایی محاسبه و تأیید شوند.
