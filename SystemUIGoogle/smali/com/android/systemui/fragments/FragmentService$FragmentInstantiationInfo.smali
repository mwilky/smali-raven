.class public final Lcom/android/systemui/fragments/FragmentService$FragmentInstantiationInfo;
.super Ljava/lang/Object;
.source "FragmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentInstantiationInfo"
.end annotation


# instance fields
.field public final mDaggerComponent:Ljava/lang/Object;

.field public final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentInstantiationInfo;->mMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentInstantiationInfo;->mDaggerComponent:Ljava/lang/Object;

    return-void
.end method
