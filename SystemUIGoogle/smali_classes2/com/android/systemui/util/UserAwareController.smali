.class public interface abstract Lcom/android/systemui/util/UserAwareController;
.super Ljava/lang/Object;
.source "UserAwareController.kt"


# virtual methods
.method public changeUser(Landroid/os/UserHandle;)V
    .locals 0

    const-string p0, "newUser"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract getCurrentUserId()I
.end method
