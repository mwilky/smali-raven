.class public final Lcom/android/systemui/qs/tileimpl/HeightOverrideable$DefaultImpls;
.super Ljava/lang/Object;
.source "HeightOverrideable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/HeightOverrideable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static resetOverride(Lcom/android/systemui/qs/tileimpl/HeightOverrideable;)V
    .locals 1

    const-string/jumbo v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;->setHeightOverride(I)V

    return-void
.end method
