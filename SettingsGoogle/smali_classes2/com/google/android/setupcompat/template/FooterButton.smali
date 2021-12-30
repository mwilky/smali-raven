.class public final Lcom/google/android/setupcompat/template/FooterButton;
.super Ljava/lang/Object;
.source "FooterButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/template/FooterButton$Builder;,
        Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
    }
.end annotation


# instance fields
.field private buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

.field private final buttonType:I

.field private clickCount:I

.field private direction:I

.field private enabled:Z

.field private locale:Ljava/util/Locale;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

.field private text:Ljava/lang/CharSequence;

.field private theme:I

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_sucButtonType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonTypeValue(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterButton_android_theme:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILjava/util/Locale;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    iput p3, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    iput p4, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    iput-object p5, p0, Lcom/google/android/setupcompat/template/FooterButton;->locale:Ljava/util/Locale;

    iput p6, p0, Lcom/google/android/setupcompat/template/FooterButton;->direction:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILjava/util/Locale;ILcom/google/android/setupcompat/template/FooterButton$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IILjava/util/Locale;I)V

    return-void
.end method

.method private getButtonTypeName()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "OTHER"

    return-object p0

    :pswitch_0
    const-string p0, "STOP"

    return-object p0

    :pswitch_1
    const-string p0, "SKIP"

    return-object p0

    :pswitch_2
    const-string p0, "OPT_IN"

    return-object p0

    :pswitch_3
    const-string p0, "NEXT"

    return-object p0

    :pswitch_4
    const-string p0, "DONE"

    return-object p0

    :pswitch_5
    const-string p0, "CLEAR"

    return-object p0

    :pswitch_6
    const-string p0, "CANCEL"

    return-object p0

    :pswitch_7
    const-string p0, "ADD_ANOTHER"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getButtonTypeValue(I)I
    .locals 0

    if-ltz p1, :cond_0

    const/16 p0, 0x8

    if-gt p1, p0, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a ButtonType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getButtonType()I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonType:I

    return p0
.end method

.method public getMetrics(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/logging/CustomEvent;->trimsStringOverMaxLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_onClickCount"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    invoke-virtual {v0, p1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getOnClickListenerWhenDisabled()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListenerWhenDisabled:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTheme()I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->theme:I

    return p0
.end method

.method public getVisibility()I
    .locals 0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/setupcompat/template/FooterButton;->clickCount:I

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->enabled:Z

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onEnabledChanged(Z)V

    :cond_0
    return-void
.end method

.method setOnButtonEventListener(Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;)V
    .locals 1

    const-string v0, "Event listener of footer button may not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setText(Landroid/content/Context;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->text:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onTextChanged(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/setupcompat/template/FooterButton;->visibility:I

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterButton;->buttonListener:Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;->onVisibilityChanged(I)V

    :cond_0
    return-void
.end method
