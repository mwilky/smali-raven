.class public interface abstract Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentChangeListener;
.super Ljava/lang/Object;
.source "ReverseWirelessCharger.java"

# interfaces
.implements Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IsDockPresentChangeListener"
.end annotation


# virtual methods
.method public abstract onDockPresentChanged(Landroid/os/Bundle;)V
.end method

.method public onIsDockPresentChanged(ZBBZI)V
    .locals 2

    invoke-static {}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIsDockPresentChanged(): docked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " orient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isGetI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseWirelessCharger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->access$100(ZBBZI)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$IsDockPresentChangeListener;->onDockPresentChanged(Landroid/os/Bundle;)V

    return-void
.end method
