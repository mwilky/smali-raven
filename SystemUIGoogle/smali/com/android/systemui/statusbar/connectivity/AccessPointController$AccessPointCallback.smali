.class public interface abstract Lcom/android/systemui/statusbar/connectivity/AccessPointController$AccessPointCallback;
.super Ljava/lang/Object;
.source "AccessPointController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/connectivity/AccessPointController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessPointCallback"
.end annotation


# virtual methods
.method public abstract onAccessPointsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation
.end method
