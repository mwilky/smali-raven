.class final synthetic Lcom/android/systemui/util/DualHeightHorizontalLinearLayout$updateResources$4;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "DualHeightHorizontalLinearLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->updateResources()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;

    const-string v3, "singleLineVerticalPaddingPx"

    const-string v4, "getSingleLineVerticalPaddingPx()I"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;

    invoke-static {p0}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->access$getSingleLineVerticalPaddingPx$p(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->access$setSingleLineVerticalPaddingPx$p(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;I)V

    return-void
.end method
