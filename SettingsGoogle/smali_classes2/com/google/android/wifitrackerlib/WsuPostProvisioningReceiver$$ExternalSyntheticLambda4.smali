.class public final synthetic Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->$r8$lambda$Mt9TqvBqY5Q-zYE0XlOa5fc5iCQ(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
