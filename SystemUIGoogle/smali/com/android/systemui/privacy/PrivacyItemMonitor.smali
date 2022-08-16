.class public interface abstract Lcom/android/systemui/privacy/PrivacyItemMonitor;
.super Ljava/lang/Object;
.source "PrivacyItemMonitor.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;
    }
.end annotation


# virtual methods
.method public abstract getActivePrivacyItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startListening(Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;)V
.end method

.method public abstract stopListening()V
.end method
