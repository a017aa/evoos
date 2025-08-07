.class public Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
.super Landroid/view/View;
.source "go/retraceme eb39802d9eb5d6f314180fdca4b991641e23900f6e309b3dade074ee55d5af20"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# static fields
.field public static final PULSE_ANIMATION_PROGRESS:Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;


# instance fields
.field public final mAdditionalHeightForAnimation:F

.field public final mAdditionalWidthForAnimation:F

.field public mBottom:F

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field public mDarkColor:I

.field private mDarkIntensity:F

.field private mIsCustomPillEnabled:Z

.field public mLightColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field public mPulseAnimationProgress:F

.field public mPulseAnimator:Landroid/animation/ObjectAnimator;

.field public mRadius:F

.field public mRequiresInvalidate:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field public mShrink:Z

.field public final mShrinkWidthForAnimation:F

.field public mWidth:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetPulseAnimationProgress(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;)F
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->getPulseAnimationProgress()F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    .line 3
    const-string v1, "pulseAnimationProgress"

    .line 5
    invoke-direct {v0, v1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->PULSE_ANIMATION_PROGRESS:Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContentResolver:Landroid/content/ContentResolver;

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07118b

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    const v1, 0x7f071189

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    const v1, 0x7f07118e

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalWidthForAnimation:F

    const v1, 0x7f07118d

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalHeightForAnimation:F

    const v1, 0x7f07118f

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrinkWidthForAnimation:F

    const v0, 0x7f040283

    .line 11
    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v0

    const v1, 0x7f0404fb

    .line 12
    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v1

    .line 13
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 14
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f04041e

    const/4 v0, 0x0

    .line 15
    invoke-static {v2, p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v2

    .line 16
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    .line 17
    invoke-static {v1, p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v2

    .line 18
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    .line 19
    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 20
    const-class v3, Lcom/miui/systemui/SettingsManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    check-cast v2, Lcom/miui/systemui/SettingsManager;

    .line 22
    iget-boolean v2, v2, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    if-eqz v2, :cond_79

    .line 23
    invoke-static {v1, p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    goto :goto_7b

    :cond_79
    const/high16 p1, -0x67000000

    .line 24
    :goto_7b
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->updateSettings()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/gestural/NavigationHandle;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->updateSettings()V

    return-void
.end method

.method private getPulseAnimationProgress()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    .line 3
    return p0
.end method

.method private registerSettingsObserver()V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContentResolver:Landroid/content/ContentResolver;

    .line 134
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 135
    .local v1, "contentObserver":Landroid/database/ContentObserver;
    const-string v2, "navigation_handle_custom_pill"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    const-string v2, "navigation_handle_use_monet"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    const-string v2, "navigation_handle_light_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    const-string v2, "navigation_handle_dark_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    const-string v2, "navigation_handle_width"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    const-string v2, "navigation_handle_radius"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    const-string v2, "navigation_handle_bottom"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    return-void
.end method

.method private updateSettings()V
    .registers 9

    .line 62
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContext:Landroid/content/Context;

    .line 63
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "navigation_handle_custom_pill"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    move v2, v4

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mIsCustomPillEnabled:Z

    .line 65
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mIsCustomPillEnabled:Z

    if-nez v2, :cond_6a

    .line 66
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 67
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v4, "dimen/navigation_handle_radius"

    invoke-static {v0, v4}, Lcom/android/kevin/MyUtils;->getRIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    .line 68
    const-string v4, "dimen/navigation_handle_bottom"

    invoke-static {v0, v4}, Lcom/android/kevin/MyUtils;->getRIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mWidth:I

    .line 70
    new-instance v4, Landroid/view/ContextThemeWrapper;

    const-string v5, "attr/lightIconTheme"

    invoke-static {v0, v5}, Lcom/android/kevin/MyUtils;->getRIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v5

    invoke-direct {v4, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 71
    .local v4, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const-string v6, "attr/darkIconTheme"

    invoke-static {v0, v6}, Lcom/android/kevin/MyUtils;->getRIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v5, "contextThemeWrapper2":Landroid/view/ContextThemeWrapper;
    const-string v6, "attr/homeHandleColor"

    invoke-static {v0, v6}, Lcom/android/kevin/MyUtils;->getRIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 73
    .local v6, "homeHandleColor":I
    invoke-static {v4, v6, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    .line 74
    invoke-static {v5, v6, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    .line 75
    .end local v2  # "resources":Landroid/content/res/Resources;
    .end local v4  # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    .end local v5  # "contextThemeWrapper2":Landroid/view/ContextThemeWrapper;
    .end local v6  # "homeHandleColor":I
    goto :goto_ca

    .line 76
    :cond_6a
    const-string v2, "navigation_handle_use_monet"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_73

    move v3, v4

    :cond_73
    move v2, v3

    .line 77
    .local v2, "useMonet":Z
    if-nez v2, :cond_8a

    .line 78
    const-string v3, "navigation_handle_light_color"

    const/high16 v4, -0x1000000

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    .line 79
    const-string v3, "navigation_handle_dark_color"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    goto :goto_aa

    .line 81
    :cond_8a
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "color/system_accent1_200.android"

    invoke-static {v0, v4}, Lcom/android/kevin/MyUtils;->getRIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "color/system_accent1_500.android"

    invoke-static {v0, v4}, Lcom/android/kevin/MyUtils;->getRIdentifier(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    .line 84
    :goto_aa
    const-string v3, "navigation_handle_width"

    const/16 v4, 0x54

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mWidth:I

    .line 85
    const-string v3, "navigation_handle_radius"

    const/high16 v4, 0x40c00000  # 6.0f

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    .line 86
    const-string v3, "navigation_handle_bottom"

    const/high16 v4, 0x41700000  # 15.0f

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    .line 88
    .end local v2  # "useMonet":Z
    :goto_ca
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->setDarkIntensity(F)V

    .line 89
    return-void
.end method


# virtual methods
.method public final abortCurrentGesture()V
    .registers 1

    .line 1
    return-void
.end method

.method public final animateLongPress(ZZJ)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 8
    :cond_7
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrink:Z

    .line 10
    if-eqz p2, :cond_e

    .line 12
    sget-object p2, Lcom/android/app/animation/Interpolators;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    .line 14
    goto :goto_18

    .line 15
    :cond_e
    if-eqz p1, :cond_16

    .line 17
    new-instance p2, Lcom/android/systemui/navigationbar/gestural/NavigationHandle$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 22
    goto :goto_18

    .line 23
    :cond_16
    sget-object p2, Lcom/android/app/animation/Interpolators;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    .line 25
    :goto_18
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->PULSE_ANIMATION_PROGRESS:Lcom/android/systemui/navigationbar/gestural/NavigationHandle$1;

    .line 27
    if-eqz p1, :cond_1f

    .line 29
    const/high16 p1, 0x3f800000  # 1.0f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :goto_20
    const/4 v1, 0x1

    .line 34
    new-array v1, v1, [F

    .line 36
    const/4 v2, 0x0

    .line 37
    aput p1, v1, v2

    .line 39
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    .line 45
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimator:Landroid/animation/ObjectAnimator;

    .line 54
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 57
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 145
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->registerSettingsObserver()V

    .line 147
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 150
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v1

    .line 10
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrink:Z

    if-eqz v2, :cond_15

    .line 14
    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mShrinkWidthForAnimation:F

    .line 16
    neg-float v2, v2

    .line 17
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    .line 19
    mul-float/2addr v2, v3

    .line 20
    const/4 v3, 0x0

    .line 21
    goto :goto_20

    .line 22
    :cond_15
    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalHeightForAnimation:F

    .line 24
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    .line 26
    mul-float/2addr v2, v3

    .line 27
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mAdditionalWidthForAnimation:F

    .line 29
    mul-float/2addr v3, v4

    .line 30
    move v15, v3

    .line 31
    move v3, v2

    .line 32
    move v2, v15

    .line 33
    :goto_20
    iget v4, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    .line 35
    const/high16 v5, 0x40000000  # 2.0f

    .line 37
    mul-float/2addr v4, v5

    .line 38
    add-float/2addr v4, v3

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 42
    move-result v6

    .line 43
    int-to-float v6, v6

    .line 44
    add-float v10, v6, v2

    .line 46
    neg-float v8, v2

    .line 47
    int-to-float v1, v1

    .line 48
    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    .line 50
    sub-float/2addr v1, v2

    .line 51
    sub-float/2addr v1, v4

    .line 52
    div-float/2addr v3, v5

    .line 53
    add-float v9, v3, v1

    .line 55
    div-float v13, v4, v5

    .line 57
    add-float v11, v9, v4

    .line 59
    iget-object v14, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 61
    move-object/from16 v7, p1

    .line 63
    move v12, v13

    .line 64
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 96
    iget-boolean v2, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mIsCustomPillEnabled:Z

    if-eqz v2, :cond_96_end

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 98
    .local v2, "height":I
    iget v3, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    mul-float/2addr v3, v5

    .line 99
    .local v3, "handleHeight":F
    int-to-float v4, v2

    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    sub-float/2addr v4, v6

    sub-float/2addr v4, v3

    .line 100
    .local v4, "top":F
    iget v12, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    .line 101
    .local v12, "radius":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 102
    .local v13, "width":I
    iget v6, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mWidth:I

    sub-int v6, v13, v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 103
    .local v6, "left":F
    iget v7, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mWidth:I

    int-to-float v7, v7

    add-float v8, v6, v7

    add-float v9, v4, v3

    iget-object v11, v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v12

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_96_end

    .line 67
    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    const/4 v0, 0x0

    .line 5
    cmpg-float v0, p1, v0

    .line 7
    if-lez v0, :cond_14

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 11
    if-nez v0, :cond_d

    goto :goto_14

    .line 13
    :cond_d
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 19
    :cond_14
    :goto_14
    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 5

    .line 121
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkIntensity:F

    .line 1
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v0

    .line 123
    .local v0, "intValue":I
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 32
    move-result v1

    .line 33
    if-eq v1, v0, :cond_40

    .line 124
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->getVisibility()I

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3d

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x0

    .line 51
    cmpg-float v1, v1, v2

    .line 53
    if-gtz v1, :cond_39

    goto :goto_3d

    .line 128
    :cond_39
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->invalidate()V

    goto :goto_40

    .line 126
    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 131
    :cond_40
    :goto_40
    return-void
.end method

.method public setDefaultColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 2

    .line 1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    return-void
.end method

.method public setVertical(Z)V
    .registers 2

    .line 1
    return-void
.end method
