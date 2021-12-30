.class public Lcom/google/android/setupdesign/items/ExpandableSwitchItem;
.super Lcom/google/android/setupdesign/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private collapsedSummary:Ljava/lang/CharSequence;

.field private expandedSummary:Ljava/lang/CharSequence;

.field private isExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/items/Item;->setIconGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    new-instance v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;-><init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem_sudCollapsedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudExpandableSwitchItem_sudExpandedSummary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudItem_sudIconGravity:I

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/Item;->setIconGravity(I)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private tintCompoundDrawables(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010036

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_3

    sget p0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    array-length v1, p1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length p1, p0

    :goto_1
    if-ge v2, p1, :cond_3

    aget-object v1, p0, v2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getCollapsedSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->collapsedSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected getDefaultLayoutResource()I
    .locals 0

    sget p0, Lcom/google/android/setupdesign/R$layout;->sud_items_expandable_switch:I

    return p0
.end method

.method public getExpandedSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->expandedSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->getExpandedSummary()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->getCollapsedSummary()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/SwitchItem;->onBindView(Landroid/view/View;)V

    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_expandable_switch_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v1, v0, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/setupdesign/view/CheckableLinearLayout;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/view/CheckableLinearLayout;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->tintCompoundDrawables(Landroid/view/View;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {v0}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationLayoutPaddingStyle(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setExpanded(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded:Z

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItem;->notifyItemChanged()V

    return-void
.end method
