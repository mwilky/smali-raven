.class public Lcom/android/server/pm/SettingsXml$Serializer;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SettingsXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation


# instance fields
.field private final mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

.field private final mXmlSerializer:Landroid/util/TypedXmlSerializer;


# direct methods
.method private constructor <init>(Landroid/util/TypedXmlSerializer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    new-instance v0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;-><init>(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml$1;)V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;-><init>(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    invoke-static {v0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->access$200(Lcom/android/server/pm/SettingsXml$WriteSectionImpl;)V

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->flush()V

    return-void
.end method

.method public startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$Serializer;->mWriteSection:Lcom/android/server/pm/SettingsXml$WriteSectionImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    return-object v0
.end method
