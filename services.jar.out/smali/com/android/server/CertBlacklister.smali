.class public Lcom/android/server/CertBlacklister;
.super Landroid/os/Binder;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CertBlacklister$BlacklistObserver;
    }
.end annotation


# static fields
.field public static final BLACKLIST_ROOT:Ljava/lang/String;

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static final SERIAL_PATH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlacklister;->BLACKLIST_ROOT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pubkey_blacklist.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "serial_blacklist.txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlacklister;->SERIAL_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/CertBlacklister;->registerObservers(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;
    .locals 3

    new-instance p0, Lcom/android/server/CertBlacklister$BlacklistObserver;

    sget-object v0, Lcom/android/server/CertBlacklister;->PUBKEY_PATH:Ljava/lang/String;

    const-string/jumbo v1, "pubkey_blacklist"

    const-string/jumbo v2, "pubkey"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/server/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object p0
.end method

.method public final buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;
    .locals 3

    new-instance p0, Lcom/android/server/CertBlacklister$BlacklistObserver;

    sget-object v0, Lcom/android/server/CertBlacklister;->SERIAL_PATH:Ljava/lang/String;

    const-string/jumbo v1, "serial_blacklist"

    const-string/jumbo v2, "serial"

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/android/server/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object p0
.end method

.method public final registerObservers(Landroid/content/ContentResolver;)V
    .locals 3

    const-string/jumbo v0, "pubkey_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/CertBlacklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "serial_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/server/CertBlacklister;->buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlacklister$BlacklistObserver;

    move-result-object p0

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
