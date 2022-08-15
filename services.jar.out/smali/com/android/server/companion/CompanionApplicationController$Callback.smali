.class public interface abstract Lcom/android/server/companion/CompanionApplicationController$Callback;
.super Ljava/lang/Object;
.source "CompanionApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCompanionApplicationBindingDied(ILjava/lang/String;)Z
.end method

.method public abstract onRebindCompanionApplicationTimeout(ILjava/lang/String;)V
.end method
