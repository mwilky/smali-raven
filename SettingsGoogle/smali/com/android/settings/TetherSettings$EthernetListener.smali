.class final Lcom/android/settings/TetherSettings$EthernetListener;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EthernetListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$EthernetListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$EthernetListener;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 0

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p2}, Lcom/android/settings/TetherSettings;->-$$Nest$fgetmAvailableInterfaces(Lcom/android/settings/TetherSettings;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p2}, Lcom/android/settings/TetherSettings;->-$$Nest$fgetmAvailableInterfaces(Lcom/android/settings/TetherSettings;)Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/settings/TetherSettings$EthernetListener;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->-$$Nest$mupdateBluetoothAndEthernetState(Lcom/android/settings/TetherSettings;)V

    return-void
.end method
