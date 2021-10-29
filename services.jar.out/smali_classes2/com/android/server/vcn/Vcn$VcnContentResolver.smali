.class public Lcom/android/server/vcn/Vcn$VcnContentResolver;
.super Ljava/lang/Object;
.source "Vcn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VcnContentResolver"
.end annotation


# instance fields
.field private final mImpl:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/Vcn$VcnContentResolver;->mImpl:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vcn/Vcn$VcnContentResolver;->mImpl:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
