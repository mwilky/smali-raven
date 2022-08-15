.class public Lcom/android/server/uri/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field public final persistedCreateTime:J

.field public final persistedModeFlags:I

.field public final sourcePkg:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final targetUserId:I

.field public final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriPermission;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/uri/UriPermission;->targetUserId:I

    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iput-object v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v0, p1, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iput v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    iget-wide v0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission$Snapshot-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/uri/UriPermission$Snapshot;-><init>(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method
