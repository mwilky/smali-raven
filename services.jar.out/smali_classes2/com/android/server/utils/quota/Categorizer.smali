.class public interface abstract Lcom/android/server/utils/quota/Categorizer;
.super Ljava/lang/Object;
.source "Categorizer.java"


# static fields
.field public static final SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/utils/quota/Categorizer$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/server/utils/quota/Categorizer;->SINGLE_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    return-void
.end method

.method public static synthetic lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .locals 1

    sget-object v0, Lcom/android/server/utils/quota/Category;->SINGLE_CATEGORY:Lcom/android/server/utils/quota/Category;

    return-object v0
.end method


# virtual methods
.method public abstract getCategory(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
.end method
