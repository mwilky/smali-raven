.class public Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "AndroidNetIpSecIkeUpdater.java"


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "android.net.ipsec.ike"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 1

    const-string v0, "android.net.ipsec.ike"

    invoke-static {p1, v0}, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;->removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    return-void
.end method
