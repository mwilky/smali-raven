.class public Lcom/android/server/timedetector/EnvironmentImpl$1;
.super Landroid/database/ContentObserver;
.source "EnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/timedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/EnvironmentImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/EnvironmentImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/timedetector/EnvironmentImpl$1;->this$0:Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/timedetector/EnvironmentImpl$1;->this$0:Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-static {p0}, Lcom/android/server/timedetector/EnvironmentImpl;->-$$Nest$mhandleAutoTimeDetectionChangedOnHandlerThread(Lcom/android/server/timedetector/EnvironmentImpl;)V

    return-void
.end method
