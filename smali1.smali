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

.field public final mBottom:F

.field public final mDarkColor:I

.field public final mLightColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field public mPulseAnimationProgress:F

.field public mPulseAnimator:Landroid/animation/ObjectAnimator;

.field public final mRadius:F

.field public mRequiresInvalidate:Z

.field public mShrink:Z

.field public final mShrinkWidthForAnimation:F


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

    return-void
.end method

.method private getPulseAnimationProgress()F
    .registers 1

    .line 1
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPulseAnimationProgress:F

    .line 3
    return p0
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

    .line 12
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
    cmpl-float p1, p1, v0

    .line 7
    if-lez p1, :cond_12

    .line 9
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 11
    if-eqz p1, :cond_12

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    :cond_12
    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 5

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
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Integer;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 32
    move-result v0

    .line 33
    if-eq v0, p1, :cond_3d

    .line 35
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_3a

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 49
    move-result p1

    .line 50
    const/4 v0, 0x0

    .line 51
    cmpl-float p1, p1, v0

    .line 53
    if-lez p1, :cond_3a

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 62
    :cond_3d
    :goto_3d
    return-void
.end method

.method public setDefaultColor(I)V
    .registers 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

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
