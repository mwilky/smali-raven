.class public interface abstract Lcom/android/server/backup/internal/OnTaskFinishedListener;
.super Ljava/lang/Object;
.source "OnTaskFinishedListener.java"


# static fields
.field public static final NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;


# direct methods
.method public static synthetic $r8$lambda$oeBgztBFhkLstOt5uU4vzRLgDig(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->lambda$static$0(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    return-void
.end method

.method public static synthetic lambda$static$0(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract onFinished(Ljava/lang/String;)V
.end method
