.class public Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;
.super Landroid/widget/LinearLayout;
.source "FaceEnrollAccessibilityToggle.java"


# instance fields
.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0600dd

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object p3, Lcom/android/settings/R$styleable;->FaceEnrollAccessibilityToggle:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    const v0, 0x7f0d05c1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const p1, 0x7f0d05c9

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setFocusable(Z)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public getSwitch()Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public setListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityToggle;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
