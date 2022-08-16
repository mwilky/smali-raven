.class public interface abstract Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;
.super Ljava/lang/Object;
.source "MagnetizedObject.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MagnetListener"
.end annotation


# virtual methods
.method public abstract onReleasedInTarget()V
.end method

.method public abstract onStuckToTarget()V
.end method

.method public abstract onUnstuckFromTarget(FFZ)V
.end method
