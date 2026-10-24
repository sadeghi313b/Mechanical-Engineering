sliding involute spline
### برای شما Clearance Fit لازم است

در این کاربرد من **interference fit** یا **transition fit** انتخاب نمی‌کنم، چون حرکت کشویی باید آزاد باشد. در DIN 5480 برای **free/clearance fit** چند انتخاب وجود دارد:

|Hub|Shaft|Fit|
|---|---|---|
|9H|9g|Rough free fit – clearance کم|
|9H|9e|Rough free fit – clearance بیشتر|
|9H|9d|Rough free fit – clearance بیشتر|
|9H|10c|Rough free fit – نسبتاً آزاد|
|9H|11a|Rough free fit – بسیار آزاد|
|7H|7h / 7g / 8f|Fine free fit – ساخت دقیق‌تر|

این ترکیب‌ها مستقیماً در جدول **Fit types** استاندارد DIN 5480 آمده‌اند.

این جدول، **لیست پروفیل‌های استاندارد/ترجیحی DIN 5480** است. یعنی KISSsoft مجموعه‌ای از ترکیب‌های مجاز و استاندارد هندسه spline را به شما پیشنهاد می‌دهد و با انتخاب هر ردیف، چند پارامتر با هم تعیین می‌شوند. در Manual هم گفته شده که این preference sequenceها در فایل‌هایی مثل `M02C-001.dat` ذخیره شده‌اند. USER MANUAL 2024

معنی ستون‌ها:

|Column|Meaning|
|---|---|
|`da1`|Tip diameter of shaft — قطر تاج هزارخار خارجی|
|`da2`|Tip diameter of hub — قطر تاج هزارخار داخلی|
|`mn`|Normal module|
|`z`|Number of teeth|
|`x1`|Profile shift coefficient of shaft|

طبق Manual همین تعریف‌ها صریحاً آمده است.

```
DIN 5480
Pressure angle = 30°
Module = 2 mm
Number of teeth = 28
Reference diameter ≈ 56 mm
Engagement length = 15 mm
Quality = 8
Flank centered
```

**در حالت فعلی شما لزوماً قطر سر دندانه شفت کم نمی‌شود**.

در ریپورت شما آمده:

```
not topping
```

در حالت **non-topping**، تغییر `Tooth thickness allowance / Backlash` عمدتاً باعث می‌شود **ضخامت دندانه روی پهلوهای involute کمتر شود**؛ یعنی flankها عقب می‌روند، ولی `Tip diameter (da1)` را می‌توان مستقل نگه داشت. Manual هم می‌گوید برای ابزار non-topping، تلرانس قطر سر دندانه مستقل قابل تعیین است؛ در مقابل، در topping tool قطرها می‌توانند از tooth-thickness allowance تأثیر بگیرند.