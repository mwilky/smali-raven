.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroid/net/vcn/VcnConfig;

    invoke-direct {p0, p1}, Landroid/net/vcn/VcnConfig;-><init>(Landroid/os/PersistableBundle;)V

    return-object p0
.end method
