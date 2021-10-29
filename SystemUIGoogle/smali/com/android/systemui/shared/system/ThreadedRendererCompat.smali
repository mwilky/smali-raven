.class public Lcom/android/systemui/shared/system/ThreadedRendererCompat;
.super Ljava/lang/Object;
.source "ThreadedRendererCompat.java"


# static fields
.field public static EGL_CONTEXT_PRIORITY_HIGH_IMG:I = 0x3101

.field public static EGL_CONTEXT_PRIORITY_REALTIME_NV:I = 0x3357


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static setContextPriority(I)V
    .locals 0

    invoke-static {p0}, Landroid/view/ThreadedRenderer;->setContextPriority(I)V

    return-void
.end method
