.class public Lcom/google/android/settings/connecteddevice/dock/DockDevice;
.super Ljava/lang/Object;
.source "DockDevice.java"


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/connecteddevice/dock/DockDevice;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/settings/connecteddevice/dock/DockDevice;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/connecteddevice/dock/DockDevice;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/connecteddevice/dock/DockDevice;->mName:Ljava/lang/String;

    return-object p0
.end method
