.class final Lcom/android/server/alarm/AlarmManagerService$PriorityClass;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PriorityClass"
.end annotation


# instance fields
.field priority:I

.field seq:I

.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->seq:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    return-void
.end method
