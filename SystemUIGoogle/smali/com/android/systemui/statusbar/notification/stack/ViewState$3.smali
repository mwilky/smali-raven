.class public final Lcom/android/systemui/statusbar/notification/stack/ViewState$3;
.super Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnimationEndTag()I
    .locals 0

    const p0, 0x7f0b0580

    return p0
.end method

.method public final getAnimationStartTag()I
    .locals 0

    const p0, 0x7f0b0581

    return p0
.end method

.method public final getAnimatorTag()I
    .locals 0

    const p0, 0x7f0b0582

    return p0
.end method

.method public final getProperty()Landroid/util/Property;
    .locals 0

    sget-object p0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-object p0
.end method
