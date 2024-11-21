interface AggregatorV3Interface {
    function latestRoundData() external view returns (
        uint80 roundId,
        int price,
        uint startedAt,
        uint timeStamp,
        uint80 answeredInRound
    );
}
