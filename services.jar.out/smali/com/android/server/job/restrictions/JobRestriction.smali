.class public abstract Lcom/android/server/job/restrictions/JobRestriction;
.super Ljava/lang/Object;
.source "JobRestriction.java"


# instance fields
.field private final mInternalReason:I

.field private final mReason:I

.field final mService:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    iput p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mReason:I

    iput p3, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    return-void
.end method


# virtual methods
.method public abstract dumpConstants(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public final getInternalReason()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    return v0
.end method

.method public final getReason()I
    .locals 1

    iget v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mReason:I

    return v0
.end method

.method public abstract isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z
.end method

.method public onSystemServicesReady()V
    .locals 0

    return-void
.end method
