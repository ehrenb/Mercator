.class public Lcm/aptoide/pt/model/v7/timeline/Ab;
.super Ljava/lang/Object;
.source "Ab.java"


# instance fields
.field private final conversion:Lcm/aptoide/pt/model/v7/timeline/Conversion;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/model/v7/timeline/Conversion;)V
    .locals 0
    .param p1    # Lcm/aptoide/pt/model/v7/timeline/Conversion;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "conversion"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/timeline/Ab;->conversion:Lcm/aptoide/pt/model/v7/timeline/Conversion;

    .line 15
    return-void
.end method


# virtual methods
.method public getConversion()Lcm/aptoide/pt/model/v7/timeline/Conversion;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/timeline/Ab;->conversion:Lcm/aptoide/pt/model/v7/timeline/Conversion;

    return-object v0
.end method
