.class final Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TempAllowListDuration"
.end annotation


# instance fields
.field duration:J

.field reason:Ljava/lang/String;

.field reasonCode:I

.field type:I


# direct methods
.method constructor <init>(JIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    iput p3, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    iput p4, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    iput-object p5, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    return-void
.end method
