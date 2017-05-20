.class final Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;
.super Ljava/lang/Object;
.source "AppViewRateThisWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlagThisApp"
.end annotation


# instance fields
.field private flagThisAppBtn:Landroid/widget/Button;

.field private flagsLayout:Landroid/view/View;

.field private numberFakeFlags:Landroid/widget/TextView;

.field private numberFreezeFlags:Landroid/widget/TextView;

.field private numberGoodFlags:Landroid/widget/TextView;

.field private numberLicenceFlags:Landroid/widget/TextView;

.field private numberVirusFlags:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->flags_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->flagsLayout:Landroid/view/View;

    .line 97
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->btn_flag_this_app:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->flagThisAppBtn:Landroid/widget/Button;

    .line 98
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->number_good_flags:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberGoodFlags:Landroid/widget/TextView;

    .line 99
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->number_licence_flags:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberLicenceFlags:Landroid/widget/TextView;

    .line 100
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->number_fake_flags:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberFakeFlags:Landroid/widget/TextView;

    .line 101
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->number_freeze_flags:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberFreezeFlags:Landroid/widget/TextView;

    .line 102
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->number_virus_flags:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberVirusFlags:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method private bindVoteView(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;)V
    .locals 5

    .prologue
    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$1;->$SwitchMap$cm$aptoide$pt$model$v7$GetAppMeta$GetAppMetaFile$Flags$Vote$Type:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getType()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberFakeFlags:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberFreezeFlags:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberGoodFlags:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :pswitch_3
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberLicenceFlags:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :pswitch_4
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->numberVirusFlags:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic lambda$bindView$0(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    const-string v0, "TO DO"

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 109
    return-void
.end method


# virtual methods
.method public bindView(Lcm/aptoide/pt/model/v7/GetApp;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->flagThisAppBtn:Landroid/widget/Button;

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp$$Lambda$1;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getFlags()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;->getVotes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;

    .line 116
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->bindVoteView(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 121
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->flagsLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewRateThisWidget$FlagThisApp;->flagThisAppBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    return-void
.end method
