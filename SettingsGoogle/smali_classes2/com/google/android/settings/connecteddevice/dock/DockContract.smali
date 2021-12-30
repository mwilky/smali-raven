.class public Lcom/google/android/settings/connecteddevice/dock/DockContract;
.super Ljava/lang/Object;
.source "DockContract.java"


# static fields
.field private static final DOCK_COMPONENT:Landroid/content/ComponentName;

.field public static final DOCK_PROJECTION:[Ljava/lang/String;

.field static final DOCK_PROVIDER_CONNECTED_TOKEN:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DOCK_PROVIDER_CONNECTED_URI:Landroid/net/Uri;

.field static final DOCK_PROVIDER_SAVED_TOKEN:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DOCK_PROVIDER_SAVED_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "dockId"

    const-string v1, "dockName"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/connecteddevice/dock/DockContract;->DOCK_PROJECTION:[Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.apps.dreamliner"

    const-string v2, "com.google.android.apps.dreamliner.settings.DockDetailSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/settings/connecteddevice/dock/DockContract;->DOCK_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.google.android.apps.dreamliner.provider"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "connected"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/connecteddevice/dock/DockContract;->DOCK_PROVIDER_CONNECTED_URI:Landroid/net/Uri;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "saved"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/connecteddevice/dock/DockContract;->DOCK_PROVIDER_SAVED_URI:Landroid/net/Uri;

    return-void
.end method

.method public static buildDockSettingIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/google/android/settings/connecteddevice/dock/DockContract;->DOCK_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dockId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
