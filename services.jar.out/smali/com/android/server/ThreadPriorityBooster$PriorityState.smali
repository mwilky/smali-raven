.class public Lcom/android/server/ThreadPriorityBooster$PriorityState;
.super Ljava/lang/Object;
.source "ThreadPriorityBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThreadPriorityBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityState"
.end annotation


# instance fields
.field public prevPriority:I

.field public regionCounter:I

.field public final tid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->tid:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;->prevPriority:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ThreadPriorityBooster$PriorityState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>()V

    return-void
.end method
