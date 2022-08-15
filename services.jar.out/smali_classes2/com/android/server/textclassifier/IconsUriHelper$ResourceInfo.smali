.class public final Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
.super Ljava/lang/Object;
.source "IconsUriHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/IconsUriHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceInfo"
.end annotation


# instance fields
.field public final id:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;->id:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/textclassifier/IconsUriHelper$ResourceInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method
