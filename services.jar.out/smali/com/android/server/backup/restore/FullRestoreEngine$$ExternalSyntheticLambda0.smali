.class public final synthetic Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/backup/utils/BytesReadListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBytesRead(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/backup/restore/FullRestoreEngine;->lambda$restoreOneFile$0(J)V

    return-void
.end method
