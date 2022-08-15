.class public Lcom/android/server/backup/JobIdManager;
.super Ljava/lang/Object;
.source "JobIdManager.java"


# direct methods
.method public static getJobIdForUserId(III)I
    .locals 0

    add-int/2addr p0, p2

    if-gt p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No job IDs available in the given range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
