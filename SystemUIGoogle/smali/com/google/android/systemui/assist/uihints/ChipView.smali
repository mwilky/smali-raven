.class public Lcom/google/android/systemui/assist/uihints/ChipView;
.super Landroid/widget/FrameLayout;
.source "ChipView.java"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final BACKGROUND_DARK:Landroid/graphics/drawable/Drawable;

.field public final BACKGROUND_LIGHT:Landroid/graphics/drawable/Drawable;

.field public final TEXT_COLOR_DARK:I

.field public final TEXT_COLOR_LIGHT:I

.field public mChip:Landroid/widget/LinearLayout;

.field public mIconView:Landroid/widget/ImageView;

.field public mLabelView:Landroid/widget/TextView;

.field public mSpaceView:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/ChipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/ChipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/ChipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0803cc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->BACKGROUND_DARK:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f0803cd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->BACKGROUND_LIGHT:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f060039

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->TEXT_COLOR_DARK:I

    const p2, 0x7f06003a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->TEXT_COLOR_LIGHT:I

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mChip:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0185

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0b0186

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mLabelView:Landroid/widget/TextView;

    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/ChipView;->mSpaceView:Landroid/widget/Space;

    return-void
.end method
