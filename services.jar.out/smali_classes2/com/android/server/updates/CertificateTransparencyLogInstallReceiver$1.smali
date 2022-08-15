.class public Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;
.super Ljava/lang/Object;
.source "CertificateTransparencyLogInstallReceiver.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;->deleteOldLogDirectories()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;

.field public final synthetic val$currentTarget:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;->this$0:Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver;

    iput-object p2, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;->val$currentTarget:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/updates/CertificateTransparencyLogInstallReceiver$1;->val$currentTarget:Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "logs-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
