.class public Lcom/android/systemui/util/wrapper/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebuggable()Z
    .locals 0

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return p0
.end method
