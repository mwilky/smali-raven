.class public Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;
.super Ljava/lang/Object;
.source "ShutdownCheckPoints.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;->listCheckPointsFiles()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

.field public final synthetic val$filePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;->this$0:Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;->val$filePrefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;->val$filePrefix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread$1;->val$filePrefix:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
