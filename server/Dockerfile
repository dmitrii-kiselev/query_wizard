FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY . QueryWizard
RUN dotnet restore "QueryWizard/src/QueryWizard.Server/src/QueryWizard.Server.csproj"
COPY . .
WORKDIR "/src/QueryWizard"
RUN dotnet build "QueryWizard.Server.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "QueryWizard.Server.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "QueryWizard.Server.dll"]
