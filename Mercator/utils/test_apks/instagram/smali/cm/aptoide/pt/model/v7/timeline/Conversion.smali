.class public Lcm/aptoide/pt/model/v7/timeline/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "url"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/Conversion;->url:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/Conversion;->url:Ljava/lang/String;

    return-object v0
.end method
